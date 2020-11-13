#!/bin/bash
export GITHUB_TOKEN=$1
CONFIG_FILE=$2
VERSION=$3
set -e
if [ -z $VERSION ]
then
    VERSION=$(curl https://github.com/DanySK/upgradle/releases/latest | grep -Po 'href="https://github\.com/DanySK/upgradle/releases/tag/(\K.+)(?=")')
fi
echo "Selected UpGradle version $VERSION"
curl -sL https://github.com/DanySK/upgradle/releases/download/$VERSION/upgradle-$VERSION-all.jar --output upgradle.jar
java -jar upgradle.jar $CONFIG_FILE
set +e
