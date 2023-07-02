### 1. 忽略大小写
~~~shell
echo 'set completion-ignore-case on' >> ~/.inputrc
~~~

### 2. zerotier
~~~shell
curl -s https://install.zerotier.com | sudo bash
sudo systemctl enable zerotier-one.service
sudo systemctl start zerotier-one.service
sudo zerotier-cli join 【Network ID】
~~~