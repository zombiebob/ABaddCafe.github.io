FROM ruby:2.5

RUN apt-get update -y && apt-get upgrade -y
RUN mkdir /usr/src/baddcafe
WORKDIR /usr/src/baddcafe

ENV BUNDLE_PATH /usr/src/baddcafe/vendor/bundle
ENV GEM_HOME /usr/src/baddcafe/vendor/bundle
ADD ./ ./
RUN bundle install

CMD /bin/bash
