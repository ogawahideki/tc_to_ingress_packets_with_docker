#!/bin/sh
sleep 3s
echo "send icmp packet 100 times"
ping -c 10 tc_server > /root/data/ping_result.txt
echo "iperf will start soon..."
iperf3 -c tc_server -t 20
