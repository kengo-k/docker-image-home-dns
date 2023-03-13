FROM alpine:3.17

RUN \
        apk update; \
        apk add dnsmasq;

COPY dnsmasq.conf /etc/dnsmasq.conf
COPY hosts-dnsmasq /etc/hosts-dnsmasq

CMD ["dnsmasq", "-k"]