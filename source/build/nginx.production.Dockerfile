FROM node:16 as builder

WORKDIR /app

COPY ./cite/yarn.lock .
COPY ./cite/package.json .

RUN yarn install

COPY ./cite/webpack.config.js .
COPY ./cite/postcss.config.js .
COPY ./cite/front ./front

RUN npm run build-prod


FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /app

COPY --from=builder /app/static /app/static 

