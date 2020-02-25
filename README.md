# React app using NextJS as base

## Getting Started

You have these command options:

```bash
yarn dev
# Starts the development server.

yarn build
# Builds the app for production.

yarn start
# Runs the built app in production mode.
```

Open [http://localhost:3000](http://localhost:3000) in your browser to see the result.

You can start editing the page by modifying `pages/index.js`. The page auto-updates as you edit the file.

## Environment Variables

You can override the default working directory of ```/usr/src/app``` to suit your project's app directory.

```bash
# Sample usage
node:
    image: sreine/nextjs:latest
        environment:
            - APP_WORKDIR="/home/user/app"
```