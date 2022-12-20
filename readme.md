# Thunderblog Local

To get started build the docker image locally by using the following command:
```
docker build -t thunderblog-local .
```

Then simply use docker-compose to start it up!

```
docker-compose up -d
```

## Wordpress Installation

When you run the container for the first time it will install wordpress. Since this is a bound volume, it will appear under the local `wordpress` folder. This is useful for debugging purposes, but it is not recommended to make edits in there.

## Debugging

XDebug is built into the custom docker container. It may not work on linux devices (due to the `xdebug.client_host=host.docker.internal` line.) 

### Mapping

If you use an ide like PHPStorm you may need to set these remote mappings up. Note: thunderblog refers to the theme git repo, and thunderblog-local refers to this repo.

`thunderblog:/var/www/html/wp-content/themes/thunderblog`

`thunderblog-local/wordpress:/var/www/html`

