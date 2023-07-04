# ansible-cli-anywhere
Run ansible anywhere, including Windows, using Docker


```shell
docker run -dt --name ansible-cli \
  -v $(pwd):/Workspace \
  ghcr.io/widespot/ansible-cli-anywhere
docker exec -it ansible-cli /bin/bash
> ansible --version
```

## Available tags
* `latest`
* `latest-ansibleXXX-pyYYY` (or `ansibleXXX-pyYYY`)
* `vMAJ.MIN.BUILD-ansibleXXX-pyYYY`
