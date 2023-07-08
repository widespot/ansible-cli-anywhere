# ansible-cli-anywhere
Run ansible anywhere, including Windows, using Docker

```shell
docker run -dt --name ansible-cli \
  -v $(pwd):/Workspace \
  ghcr.io/widespot/ansible-cli-anywhere
docker exec -it ansible-cli /bin/bash
> ansible --version
```

## Proxy
This image provides support for proxy internet connection.
1. set `PROXY_SECURE_HOST` environment variable
2. optionally set `PROXY_SECURE_USERNAME` (or it will be prompted)
3. Start the container and provide the proxy credentials

```shell
docker run -dt --name ansible-cli \
  -e PROXY_SECURE_HOST=my-proxy.local:8081 \
  ghcr.io/widespot/ansible-cli-anywhere
docker exec -it ansible-cli /bin/bash
> PROXY_SECURE_USERNAME=<enter-your-proxy-username>
> PROXY_SECURE_PASSWORD=<enter-your-proxy-password>
> wget https://www.widespot.be
```

## Available tags
* `vMAJ.MIN.BUILD-ansibleXXX-pyYYY`
* `vMAJ.MIN.BUILD-ansibleXXX`
* `latest-ansibleXXX-pyYYY` (or `ansibleXXX-pyYYY`)
* `latest-ansibleXXX` (or `ansibleXXX`)
* `latest`
