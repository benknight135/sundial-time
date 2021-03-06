#!/bin/bash

# exit on command failure
set -e

script_path="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd "$script_path"

## Library ##
# Build library
cd sundialtime
npm install
npm link

cd "$script_path"

## Web ##
cd sundialtimeweb
# Build website
npm link sundialtime
npm install

cd "$script_path"

echo "Install complete."