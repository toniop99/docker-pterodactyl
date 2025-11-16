FROM amazoncorretto:21.0.7

LABEL       author="Antonio Hernandez" maintainer="andezdev@gmail.com" 

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD [ "/bin/bash", "/entrypoint.sh" ]