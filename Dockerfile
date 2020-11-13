FROM adoptopenjdk:11
RUN apt-get update
RUN apt-get install git
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
