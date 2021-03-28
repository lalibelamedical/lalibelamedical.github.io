#!/bin/sh

export JEKYLL_ENV="production"
echo "Building for $JEKYLL_ENV"
bundle exec jekyll build
