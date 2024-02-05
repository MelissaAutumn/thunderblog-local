# Thunderblog Local

Simply run this command to build and bring up thunderblog:
```
docker-compose up -d --build
```

## Wordpress Installation

When you run the container for the first time it will install wordpress. Since this is a bound volume, it will appear under the local `wordpress` folder. This is useful for debugging purposes, but it is not recommended to make edits in there.

## Debugging

XDebug is built into the custom docker container. It may not work on linux devices (due to the `xdebug.client_host=host.docker.internal` line.) 

### Mapping

If you use an ide like PHPStorm you may need to set these remote mappings up. Note: thunderblog refers to the theme git repo, and thunderblog-local refers to this repo.

`thunderblog:/var/www/html/wp-content/themes/thunderblog`

`thunderblog-local/wordpress:/var/www/html`

