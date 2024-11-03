ARG XRAY_VERSION

FROM teddysun/xray:$XRAY_VERSION

RUN apk add --no-cache iptables ip6tables

WORKDIR /root
COPY start.sh .

ENV TPROXY_PORT 12345
    
ENTRYPOINT [ "/root/start.sh" ]
