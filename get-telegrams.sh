#!/bin/bash
srcdir="$(dirname -- "$(readlink -ne -- "$0")")"        #Full DIR
source "$srcdir/.env"

curl -s -X GET $GETURL
