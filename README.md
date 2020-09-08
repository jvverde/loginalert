# Send a telegram from a CLI
Alert by telegram every time a user login

### Installation
1- On your Telegram client global search for BotFather
2- Send them a a message /newbot and start a conversation with it, namely:
3- Choose a bot name (ex: Alerts)
4- Chose a username ending with Bot(ex: somethingBot)
5- If everithing is ok it will return a congratulations messages which includes a HTTP API Token. Something like this 123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11
6- Save that Token to a secure and secret place
7- Go to the Global search again, and search for your boot (ex:somethingBot)
8- Send it a message /start
9- Got to ${HOME}/loginalert
10- open another bash shell
bash
10- set an environment variable TOKEN="123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11"
TOKEN="<YOURTOKENHERE>"
10- curl https://api.telegram.org/bot$TOKEN/getUpdates

```bash
cd ${HOME}/loginalert
cp .env.sample to .env

git clone https://github.com/jvverde/loginalert ${HOME}/loginalert
cd ${HOME}/loginalert
cp -a /etc/pam.d/sshd $HOME/loginalert/sshd.bak."$(date)" 
echo "session optional pam_exec.so ${HOME}/loginalert/send-telegram.sh" |sudo tee -a /etc/pam.d/sshd
```
