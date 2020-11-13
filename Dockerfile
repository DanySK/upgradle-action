FROM adoptopenjdk:11
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
