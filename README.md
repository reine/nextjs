# React docker image using NextJS as base

## Environment Variables

You can override the default working directory of ```/usr/src/app``` to suit your project's app directory.

```bash
# Sample usage
node:
    image: sreine/nextjs:latest
        environment:
            - APP_WORKDIR="/home/user/app"
```