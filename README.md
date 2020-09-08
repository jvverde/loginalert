# Send a telegram from a CLI
Alert by telegram every time a user login

### Installation

* On your Telegram client search (global) for BotFather
* Send them a message /newbot and start a conversation with it, namely:
*  Choose a bot name (ex: Alerts)
* Choose a username ending with Bot(ex: somethingBot)
* If everithing is ok it will return a congratulations messages which includes a HTTP API Token. Something like this 123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11
* Save that Token to a secure and secret place
* Go to the Global search again, and search for your boot (ex:somethingBot)
* Send it a message /start

Now open a shell and clone this git repository
```bash
git clone https://github.com/jvverde/loginalert ${HOME}/loginalert
```
Go to ${HOME}/loginalert
```bash
cd ${HOME}/loginalert
```
Open another bash shell (by secure reasons)
```bash
bash
```
Set an environment variable TOKEN="123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11" (use the token saved above)
```bash
TOKEN="<YOURTOKENHERE>"
```
Check the new messages on your bot (You should have at lest one if you had sent one with /strat on previous step)
```bash
curl https://api.telegram.org/bot$TOKEN/getUpdates
```
You shoud receive a json object, something like this
```bash
...,"chat":{"id":822330591,"first_name":...
```
Take note of the value of field id of chat and copy .env.example to .env

```bash
cp .env.esampe to .env
```
Edit .env with your prefered editor
```bash
vim .env
```
And set the variables TOKEN and CHAT_ID with the previous obtained values.
Save the .env

Now test it by send Hello message
```bash
./send-telegram.sh "Hello World"
```
