FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get install -y iproute2 iputils-ping net-tools iperf3
ENTRYPOINT ["/root/script/entrypoint.sh"]

