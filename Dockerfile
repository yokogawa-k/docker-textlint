FROM node:slim
MAINTAINER Kazuya Yokogawa "yokogawa-k@klab.com"

RUN npm install -g \
    textlint \
    textlint-rule-preset-ja-technical-writing \
    textlint-rule-spellcheck-tech-word

COPY .textlintrc /

WORKDIR /work
ENTRYPOINT ["textlint", "--config", "/.textlintrc"]
CMD ["-h"]

