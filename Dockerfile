FROM debian
RUN apt-get update && apt-get install -y openconnect iptables expect

ADD scrics/connect.sh /root
RUN chmod +x /root/connect.sh

CMD ["/root/connect.sh"]
