FROM node:lts-alpine

WORKDIR app

COPY index.js newrelic.js package.json yarn.lock ./

RUN yarn

ENTRYPOINT yarn start

EXPOSE 5000

ENV PORT=5000
ENV DATABASE_URL=postgres://postgres:6e2421756ce72fbf94850f4d93ed2ab0@a.assistance.bg:7046/primecms
ENV SESSION_SECRET=keyboard-cat-dart