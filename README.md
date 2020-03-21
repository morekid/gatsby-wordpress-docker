# Gatsby + Wordpress + Docker setup

## How to start

    `./compose.sh`

Gatsby will be served on port `1990`, Wordpress on port `1980`, PHPMyAdmin on port `1970`.
Gatsby takes some time to initialize due to the site npm install and build.
--
Ports and Gatsby options like development, build only or serving can be configured in `docker-compose.yml`.
--
To investigate the running container logs:

    docker logs $CONTAINER_ID

_List all running containers to find your container ID: `docker ps`._

## Run shell inside container

    ./bash.sh $CONTAINER_ID

_List all running containers to find your container ID: `docker ps`._

## Clean (before rebuilding)

    ./rm_containers.sh

Will stop and remove all running containers.

    ./clean.sh

Wil remove all stopped and dangling containers/images, then delete build and development volatiles inside Gatsby (node_modules/, public/, .cache/)

## Notes

`gatsby.dockerfile` and `gatsby_entry.sh` contain the image configuration and entrypoint commands (respectively) for the Gatsby container.
