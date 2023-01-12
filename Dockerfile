FROM ghcr.io/living-tech/alpine-node19:19.3.0

LABEL maintainer="NOW ROOM<system@nowroom.jp>"

ENV APP_ROOT=/node

WORKDIR $APP_ROOT

ONBUILD COPY package.json ${APP_ROOT}/
ONBUILD COPY yarn.lock ${APP_ROOT}/

ONBUILD RUN yarn install --frozen-lockfile --ignore-optional

CMD ["yarn", "start"]
