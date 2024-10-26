FROM bitnami/python:3.11-debian-11

WORKDIR /app

RUN apt-get update
RUN apt-get install --fix-missing
RUN apt-get install -y ca-certificates-java
RUN apt-get install -y openjdk-11-jre-headless

RUN wget -q -O /tmp/allure_2.31.0-1_all.deb https://github.com/allure-framework/allure2/releases/download/2.31.0/allure_2.31.0-1_all.deb
RUN dpkg -i /tmp/allure_2.31.0-1_all.deb && rm /tmp/allure_2.31.0-1_all.deb
ENV PATH="/allure/bin:${PATH}"
ENV ALLURE_CONFIG="/allure-config/allure.properties"
RUN ls -al /
RUN allure --version
