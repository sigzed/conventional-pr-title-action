FROM node:18.8.0-alpine

ADD package.json package-lock.json /action/
RUN cd /action && npm ci

ADD src /action/src
ENTRYPOINT ["node", "/action/src/index.js"]
