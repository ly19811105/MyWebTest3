mkdir -p /tmp/Mywebtest
mkdir -p /usr/bin/Mywebtest
mkdir -p /etc/Mywebtest
# Get Link
DOWNLOAD_LINK="https://raw.githubusercontent.com/ly19811105/kintohub/master/install-release-new.sh"
CONFIG_LINK="https://raw.githubusercontent.com/ly19811105/ray-kintohub/master/config2.json"
#Download zip

curl -L -o "/tmp/Mywebtest/MyWebtest-install.sh" ${DOWNLOAD_LINK}
chmod +x /tmp/Mywebtest/MyWebtest-install.sh
bash  /tmp/Mywebtest/MyWebtest-install.sh
# Create Log
mkdir -p /var/log/Mywebtest
