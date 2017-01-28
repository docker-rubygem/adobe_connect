FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.3

RUN gem install adobe_connect --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["adobe_connect_console"]
CMD ["--help"]
