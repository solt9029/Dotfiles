#!/bin/sh

# aws
if !(type "aws" > /dev/null 2>&1); then
  pip install awscli
fi
