# ansible-cli-anywhere
Run ansible anywhere, including Windows, using Docker

```shell
docker run -dt --name ansible-cli \
  -v $(pwd):/Workspace \
  ghcr.io/widespot/ansible-cli-anywhere
docker exec -it ansible-cli /bin/bash
> ansible --version
```

## Image versions
This image is designed to provide isolated environment for various Ansible + Python versions.
See the "Available tags" version.

| Ansible version | Ansible core version | python 3.8    | python 3.10 | python 3.11   |
|-----------------|----------------------|---------------|-------------|---------------|
| `8`             | `2.15`               | Not available | ✅           | ✅             |
| `7`             | `2.14`               | Not available | ✅           | ✅             |
| `6`             | `2.13`               | ✅             | ✅           | Not available |

*More information on the Ansible ["Release and maintenante" page](https://docs.ansible.com/ansible/latest/reference_appendices/release_and_maintenance.html#ansible-community-changelogs)*

## Proxy
This image provides support for proxy internet connection.
1. set `PROXY_SECURE_HOST` environment variable
2. optionally set `PROXY_SECURE_USERNAME` (or it will be prompted)
3. Start the container and provide the proxy credentials

```shell
# Run the container, with PROXY_SECURE_HOST env
docker run -dt --name ansible-cli \
  -e PROXY_SECURE_HOST=my-proxy.local:8081 \
  ghcr.io/widespot/ansible-cli-anywhere
# Enter the container
docker exec -it ansible-cli /bin/bash
# You'll be requested to provide username (if not yet provided in env)
# and password
> PROXY_SECURE_USERNAME=<enter-your-proxy-username>
> PROXY_SECURE_PASSWORD=<enter-your-proxy-password>
# Now you can wget via proxy
> wget https://www.widespot.be
```

## Available tags
* `vMAJ.MIN.BUILD-ansibleXXX-pyYYY`
* `vMAJ.MIN.BUILD-ansibleXXX`
* `latest-ansibleXXX-pyYYY` (or `ansibleXXX-pyYYY`)
* `latest-ansibleXXX` (or `ansibleXXX`)
* `latest`
