# dev-template

> Starter template for web development projects.  
> Oriented for personal projects, but can be used for any other project.

## Dev Docker

This sections describes how to run the local development environment using
Docker.

> _**Note:**_
> 1. _This is not required option, you can run the project locally without
	 Docker_
> 2. _For this option you need to have `make` and `docker`_

### Commands

- `make dev-up` will build the Docker image, run dev container and enter to the
  container.
- `make dev-exec` enters to running container.
- `make dev-down` stops and removes the running container.