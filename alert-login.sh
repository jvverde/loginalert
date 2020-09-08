#!/bin/bash
#http://blog.th-neumeier.de/2011/02/send-email-on-ssh-login-using-pam/
if [ "$PAM_TYPE" != "open_session" ]
then
  exit 0
else
  {
    echo "User: $PAM_USER"
    echo "Remote Host: $PAM_RHOST"
    echo "Service: $PAM_SERVICE"
    echo "TTY: $PAM_TTY"
    echo "Date: `date`"
    echo "Server: `uname -a`"
  } | mail -s "$PAM_SERVICE login on `hostname -s` for account $PAM_USER" login-router-office@bkit.pt
fi
sdir="$(dirname -- "$(readlink -ne -- "$0")")"
bash "$sdir/telegram.sh"
exit 0
