if [[ -e "/usr/bin/yum" ]] 
then
  yum update -y
  yum install -y lrzsz git zip unzip curl wget qrencode libcap
else
  apt-get update -y
  apt-get install -y lrzsz git zip unzip curl wget qrencode libcap2-bin dbus
fi

rm -rf /tmp/233boy/v2ray
git clone https://github.com/t2015q/v2ray -b "master" /tmp/233boy/v2ray --depth=1
cd /tmp/233boy/v2ray
chmod +x install.sh
./install.sh local