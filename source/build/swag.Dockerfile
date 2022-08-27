FROM node:16 as builder

WORKDIR /app

COPY ./cite/yarn.lock .
COPY ./cite/package.json .

RUN yarn install

COPY ./cite/webpack.config.js .
COPY ./cite/postcss.config.js .
COPY ./cite/front ./front

RUN npm run build-prod

###########################################
FROM ghcr.io/linuxserver/swag

COPY nginx.conf /config/nginx/site-confs/default

WORKDIR /app

COPY --from=builder /app/static /app/static 

