# terraform-landscape

[![CircleCI](https://circleci.com/gh/tmknom/terraform-landscape.svg?style=svg)](https://circleci.com/gh/tmknom/terraform-landscape)
[![Docker Build Status](https://img.shields.io/docker/build/tmknom/terraform-landscape.svg)](https://hub.docker.com/r/tmknom/terraform-landscape/builds/)
[![Docker Automated build](https://img.shields.io/docker/automated/tmknom/terraform-landscape.svg)](https://hub.docker.com/r/tmknom/terraform-landscape/)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/tmknom/terraform-landscape.svg)](https://microbadger.com/images/tmknom/terraform-landscape)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/tmknom/terraform-landscape.svg)](https://microbadger.com/images/tmknom/terraform-landscape)
[![License](https://img.shields.io/github/license/tmknom/terraform-landscape.svg)](https://opensource.org/licenses/Apache-2.0)

Improve Terraform's plan output to be easier to read and understand based on Docker.

This is [terraform-landscape](https://github.com/coinbase/terraform-landscape) wrapper.

## Requirements

- [Docker](https://www.docker.com/)

## Usage

### Basic

```sh
terraform plan | docker run --rm -i tmknom/terraform-landscape
```

### With tee

```sh
terraform plan | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape
```

### Help

For details, refer to [coinbase/terraform-landscape](https://github.com/coinbase/terraform-landscape).

```sh
docker run --rm tmknom/terraform-landscape --help
```

## Makefile targets

```text
build                          Build docker image
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
```

## Development

### Installation

```shell
git clone git@github.com:tmknom/terraform-landscape.git
cd terraform-landscape
make install
```

### Deployment

Automatically deployed by "[DockerHub Automated Build](https://docs.docker.com/docker-hub/builds/)" after merge.

### Deployment Pipeline

1. GitHub - Version Control System
   - <https://github.com/tmknom/terraform-landscape>
2. CircleCI - Continuous Integration
   - <https://circleci.com/gh/tmknom/terraform-landscape>
3. Docker Hub - Docker Registry
   - <https://hub.docker.com/r/tmknom/terraform-landscape>
4. MicroBadger - Docker Inspection
   - <https://microbadger.com/images/tmknom/terraform-landscape>

## License

Apache 2 Licensed. See LICENSE for full details.
