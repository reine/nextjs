FROM node:alpine

# Set working directory. All paths will be relative to WORKDIR.
ARG buildtime_workdir="/usr/src/app"
ENV APP_WORKDIR=${buildtime_workdir}
WORKDIR ${APP_WORKDIR}

# Install dependencies
COPY package*.json ./

# Build the app
ARG buildtime_env="production"
ENV APP_ENV=${buildtime_env}
RUN if [ "$APP_ENV" = "production" ] ; then RUN npm ci --only=production; else RUN npm install; fi

# Copy source files
COPY . .

# Run the app
CMD [ "npm", "start" ]