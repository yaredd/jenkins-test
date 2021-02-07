FROM alpine:3
ENV REFRESHED_AT 2021-02-07
COPY dhcpd.conf /root/dhcpd.conf
COPY dhcpd_starter.sh /root/dhcpd_starter.sh
RUN apk update && \
    apk --no-cache add dhcp-server-ldap=4.4.2-r3 && \
    cp /root/dhcpd.conf /etc/dhcp/dhcpd.conf && \
    chmod +x /root/dhcpd_starter.sh && \
    touch /var/lib/dhcp/dhcpd.leases && \
    rm -rf /var/cache/apk/*
CMD ["/root/dhcpd_starter.sh"]

