#!/bin/bash
srcdir="$(dirname -- "$(readlink -ne -- "$0")")"        #Full DIR
source "$srcdir/.env"

[[ $1 =~ ^--?h(elp)?$ ]] && echo -e "Usage:\n\t$0 [--chat_id=ID] message" && exit

[[ $1 == --chat_id && $2 =~ ^[0-9]{9}$ ]] && shift && CHAT_ID="${1:-$CHAT_ID}" && shift
[[ $1 =~ ^--chat_id=[0-9]{9}$ ]] && CHAT_ID="${1#*=}" && shift

declare msg="$*"

[[ -z $msg ]] && {
  read -p "What is your message: " msg
}

curl -s -X POST $SENDURL -d chat_id=$CHAT_ID -d text="$msg"
