FROM amazoncorretto:21.0.7-alpine3.21

LABEL       author="Antonio Hernandez" maintainer="andezdev@gmail.com" 

RUN apk update && \
    apk add --no-cache bash

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD [ "/bin/bash", "/entrypoint.sh" ]