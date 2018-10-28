#!/bin/sh

modprobe ifb
modprobe act_mirred
ip link add ifb0 type ifb
ip link set dev ifb0 up
tc qdisc add dev eth0 ingress handle ffff:
tc filter add dev eth0 parent ffff: protocol ip u32 match u32 0 0 flowid 1:1 action mirred egress redirect dev ifb0
tc qdisc add dev ifb0 root handle 1: htb default 10
tc class add dev ifb0 parent 1:1 classid 1:10 htb rate 10mbit
tc qdisc add dev ifb0 parent 1:10 handle 10 netem delay 100ms
echo "tc configuration done"
iperf3 -s
