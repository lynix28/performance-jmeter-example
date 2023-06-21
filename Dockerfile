FROM ubuntu:22.04

WORKDIR /app/

RUN apt-get update && \
    apt-get install -y default-jre-headless

RUN mkdir /app/jmeter

COPY ./jmeter /app/jmeter

ENV JMETER_VERSION="5.5"

RUN cd /usr/bin && \
    ln -s /app/jmeter/${JMETER_VERSION}/libexec/bin/jmeter jmeter

CMD [ "bash" ]