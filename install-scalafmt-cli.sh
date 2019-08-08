#!/bin/bash

if [ "$1" == "" ]; then
    SCALA_VERSION="2.12"
    VERSION="2.0.0"
else
    SCALA_VERSION="$1"
    VERSION="$2"
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

# remove yourself
rm $0
