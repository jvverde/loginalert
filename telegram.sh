#!/bin/bash
#http://blog.th-neumeier.de/2011/02/send-email-on-ssh-login-using-pam/
#https://www.shellhacks.com/telegram-api-send-message-personal-notification-bot/
#http://www.bernaerts-nicolas.fr/linux/75-debian/351-debian-send-telegram-notification

srcdir="$(dirname -- "$(readlink -ne -- "$0")")"				#Full DIR
source "$srcdir/.env"

if [ "$PAM_TYPE" != "open_session" ]
then
  exit 0
else
	telegram-notify --icon 26A0 --title "$PAM_SERVICE@$(hostname -s)" --text "Login for user $PAM_USER from $PAM_RHOST at _$(LC_ALL=pt_PT.UTF-8 date +%c)_"
fi
exit 0
