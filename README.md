# tc_to_ingress_packets_with_docker
## how it works
### server
1. create new interface (ifb0)
1. all incoming packet that arrives at eth0 inteface go to ifb0 interface 
1. configure tc command
	- in this example, apply traffic shaping and adding delay to ifb0
1. run iperf server

### client
1. sleep 3s to wait for startup of the server
1. send icmp pakcets to iperf server to confirm the configuration of adding delay to incoming pakcets
1. run iperf client and send packets to iperf server for 20 seconds

## how to use

```
docker-compose build
docker-compose up
```
