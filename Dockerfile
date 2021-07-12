FROM node:slim

RUN apt-get update && apt-get -y install libcap2-bin \
  && setcap cap_net_bind_service=+ep '/usr/local/bin/node'
RUN mkdir -p /meshcentral/node_modules && chown -R node:node /meshcentral
USER node
WORKDIR /meshcentral
RUN npm install --no-fund --no-audit --prefix /meshcentral meshcentral

ENTRYPOINT node ./node_modules/meshcentral/meshcentral.js
