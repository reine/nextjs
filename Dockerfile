FROM node:alpine

# Set working directory. All paths will be relative to WORKDIR.
ARG buildtime_workdir="/usr/src/app"
ENV APP_WORKDIR=${buildtime_workdir}
WORKDIR ${APP_WORKDIR}

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source files
COPY . .

# Build the app
RUN npm run build

# Run the app
CMD [ "npm", "start" ]