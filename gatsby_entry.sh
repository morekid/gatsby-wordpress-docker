#!/bin/sh
set -e

export GATSBY_DIR="/gatsby"
export PATH="$PATH:/usr/local/bin/gatsby"

# If necessary, create Gatsby site or run npm install
if [ ! -f "$GATSBY_DIR/package.json" ]
then
  echo "Creating new Gatsby site..."
  gatsby new $GATSBY_DIR

else
  if [ ! -e "$GATSBY_DIR/node_modules/" ]
  then
    echo "Node modules is empty, running npm install..."
    npm install

  fi

fi

# Develop
if  [ "$1" == "develop" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby develop --host 0.0.0.0 --port 8000

# Build only
elif  [ "$1" == "build" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build

# Build and serve
elif  [ "$1" == "stage" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build
  gatsby serve --host 0.0.0.0 --port 8000

else
  exec $@

fi


