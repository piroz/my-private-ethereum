FROM ethereum/client-go:stable
RUN apk add --no-cache curl
EXPOSE 8545 8546 30303 30303/udp
ENTRYPOINT ["geth"]
