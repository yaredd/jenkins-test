FROM alpine:latest
MAINTAINER Yared Deneke <yared.deneke@icsaddis.org>
ENV REFRESHED_AT 2020-06-16
COPY dhcpd.conf /root/dhcpd.conf
COPY dhcpd_starter.sh /root/dhcpd_starter.sh
RUN apk update && \
    apk upgrade && \
    apk add dhcp-server-ldap && \
    cp /root/dhcpd.conf /etc/dhcp/dhcpd.conf && \
    chmod +x /root/dhcpd_starter.sh && \
    touch /var/lib/dhcp/dhcpd.leases && \
    rm -rf /var/cache/apk/* 
CMD ["/root/dhcpd_starter.sh"]

