### MySQL安装与配置
~~~shell
# install
sudo apt-get install mysql-server
# configuration
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'new_password';
~~~