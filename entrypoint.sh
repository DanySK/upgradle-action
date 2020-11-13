#!/bin/bash
export GITHUB_TOKEN=$1
CONFIG_FILE=$2
echo "Selected config file: $CONFIG_FILE"
VERSION=$3
echo "Selected version: $VERSION"
set -e
if [ -z $VERSION ]
then
    echo "No version explicitly selected, computing the latest one"
    VERSION=$(curl https://github.com/DanySK/upgradle/releases/latest | grep -Po 'href="https://github\.com/DanySK/upgradle/releases/tag/(\K.+)(?=")')
    echo "Selected UpGradle version $VERSION"
fi
curl -sL https://github.com/DanySK/upgradle/releases/download/$VERSION/upgradle-$VERSION-all.jar --output upgradle.jar
java -jar upgradle.jar $CONFIG_FILE
set +e
