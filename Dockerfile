FROM node:slim
MAINTAINER Kazuya Yokogawa "yokogawa-k@klab.com"

RUN npm install -g \
    textlint \
    textlint-rule-preset-ja-technical-writing \
    textlint-rule-preset-jtf-style \
    textlint-rule-preset-ja-spacing \
    textlint-rule-spellcheck-tech-word

COPY .textlintrc /work/

WORKDIR /work
ENTRYPOINT ["textlint"]
CMD ["-h"]

