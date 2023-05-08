### 1. ~/.ssh/config
~~~
Host server
    HostName [IP]
    User [USER]
    Port 22
Host *
ServerAliveInterval 60
~~~
### 2. ssh-key
~~~
ssh-keygen -t rsa -C [EMAIL]
ssh-copy-id -i ~/.ssh/id_rsa.pub [USER]@[IP]
~~~