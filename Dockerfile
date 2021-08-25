FROM adoptopenjdk:16
RUN apt-get update
RUN apt-get install -y git
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
