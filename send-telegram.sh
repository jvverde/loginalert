#!/bin/bash
srcdir="$(dirname -- "$(readlink -ne -- "$0")")"        #Full DIR
source "$srcdir/.env"

declare msg="$1"

[[ -z $msg ]] && {
  read -p "What is your message: " msg
}

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$msg"
