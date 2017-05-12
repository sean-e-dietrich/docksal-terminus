FROM php:7.0.18-cli

MAINTAINER Sean Dietrich <sean.dietrich@inresonance.com>

ENV PATH="/opt/terminus/vendor/bin:${PATH}"

ADD . /opt/terminus

COPY ./terminus.sh ./

ENTRYPOINT ["/terminus.sh"]
