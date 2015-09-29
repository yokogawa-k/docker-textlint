FROM node:4
MAINTAINER Kazuya Yokogawa "yokogawa-k@klab.com"

RUN npm install -g textlint
RUN npm install -g \
    textlint-rule-max-ten \
    textlint-rule-spellcheck-tech-word \
    textlint-rule-no-mix-dearu-desumasu \
    textlint-rule-no-todo

ENTRYPOINT ["textlint"]
CMD ["-h"]

