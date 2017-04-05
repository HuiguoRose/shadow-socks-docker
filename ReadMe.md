# Shadow Socks Docker
This project helps people to set up a VPN server in one key.


## Requirement
### Docker
* This project needs `docker` on your server 
* Please follow this instruction to install `Docker` on your server  
`https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository`

### Native Ubuntu Environment

* Make sure you have Ubuntu 14.04 or Ubuntu 16.04


## pre-install  

* You need change the password at `shadowsocks.json`


## Installation

* Clone this project to your server  
`git clone https://github.com/infinitysky/shadow-socks-docker.git`

### Docker Version  
If you what run the server in `Docker`  
* `cd shadow-socks-docker`
* `docker build -t .`
* `docker run -p 8000:8000 ssserver`




### Native Version  

* install server : 
`sudo bash ubuntu_install.sh`

* start ssserver with following Command:  

`sudo ssserver -c /etc/shadowsocks.json -d start`

* To stop shadowsocks server:

`sudo ssserver -d stop`  

* Restart Shadowsocks server:

`sudo ssserver -c /etc/shadowsocks.json -d restart`  

* Check Shadowsocks log

`less /var/log/shadowsocks.log`