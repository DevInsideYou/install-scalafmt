#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="2.3.2"

if [ "$1" != "" ] && [ "$2" != "" ]; then
    SCALA_VERSION="$1"
    VERSION="$2"
elif [ "$1" != "" ]; then
    SCALA_VERSION="$1"
    VERSION=$FALLBACK_VERSION
else
    SCALA_VERSION="2.12"
    VERSION=$FALLBACK_VERSION
fi

# install scalafmt
sudo coursier bootstrap org.scalameta:scalafmt-cli_$SCALA_VERSION:$VERSION \
  -r sonatype:snapshots \
  -o /usr/local/bin/scalafmt \
  -f --standalone --main org.scalafmt.cli.Cli

echo
scalafmt --version

echo
echo '"scalafmt" is now on the path'
