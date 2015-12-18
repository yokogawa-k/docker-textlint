FROM node:4
MAINTAINER Kazuya Yokogawa "yokogawa-k@klab.com"

RUN npm install -g textlint
RUN npm install -g \
    textlint-rule-no-todo \
    textlint-rule-no-start-duplicated-conjunction \
    textlint-rule-prh \
    textlint-rule-max-number-of-lines \
    textlint-rule-ng-word \
    textlint-rule-max-ten \
    textlint-rule-spellcheck-tech-word \
    textlint-rule-no-mix-dearu-desumasu \
    textlint-rule-no-doubled-joshi \
    textlint-rule-no-double-negative-ja \
    textlint-rule-sentence-length \
    textlint-rule-no-dropping-the-ra \
    textlint-rule-ja-yahoo-kousei \
    textlint-rule-max-appearence-count-of-words \
    textlint-rule-max-length-of-title \
    textlint-rule-incremental-headers \
    textlint-plugin-jtf-style \
    textlint-plugin-html

COPY textlintrc.japanese /textlintrc/

ENTRYPOINT ["textlint"]
CMD ["-h"]

