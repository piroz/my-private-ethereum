# my-private-ethereum
Create private ethereum network

# how to run

## build container image with docker

```bash
$ docker build -t my-private-ethereum .
```

## setup minikube

```bash
$ brew install minikube
$ minikube start --container-runtime containerd
```

## setup Geth and accounts

```bash
$ brew tap ethereum/ethereum
$ brew install ethereum
```

Setup Geth account with this [instructions](https://geth.ethereum.org/docs/getting-started)

## setup helm

```bash
$ brew install helm
$ helm repo add stable https://charts.helm.sh/stable
$ helm install my-private-ethereum stable/ethereum --values values.yaml
$ helm upgrade my-private-ethereum \
    --set geth.account.address=YOUR-ETHEREUM-ADDRESS-HERE \
    --set geth.account.privateKey=YOUR-PRIVATE-KEY-HERE \
    --set geth.account.secret=YOUR-SECRET-HERE \
    stable/ethereum
``` 
