#!/bin/bash

# remove yourself
rm $0

# install scalafmt
cs install scalafmt

echo
echo '"scalafmt" is now on the path (assuming coursier bin directory is also on the path)'
