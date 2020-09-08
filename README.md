# loginalert
Alert by telegram every time a user login

### Installation
See http://blog.th-neumeier.de/2011/02/send-email-on-ssh-login-using-pam/

```bash
git clone https://github.com/jvverde/loginalert ${HOME}/loginalert
cd ${HOME}/loginalert

cp -a /etc/pam.d/sshd $HOME/loginalert/sshd.bak."$(date)" 
echo "session optional pam_exec.so ${HOME}/loginalert/alert-login.sh" |sudo tee -a /etc/pam.d/sshd
```
