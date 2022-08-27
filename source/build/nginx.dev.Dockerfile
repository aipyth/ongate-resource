FROM node:16 as builder

WORKDIR /app

COPY ./cite ./cite

# RUN npm ci --prefix ./cite
RUN yarn install

RUN npm run --prefix ./cite build-prod

FROM nginx

WORKDIR /app

COPY --from=builder /app/cite/static /app/static 

