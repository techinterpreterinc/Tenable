curl --request GET \
  --url 'https://www.tenable.com/downloads/api/v2/pages/nessus/files/NessusAgent-11.1.2-ubuntu1604_amd64.deb' \
  --output 'NessusAgent-11.1.2-ubuntu1604_amd64.deb'  
dpkg -i NessusAgent-11.1.2-ubuntu1604_amd64.deb
sudo /opt/nessus_agent/sbin/nessuscli agent link --key=KEY --host=sensor.cloud.tenable.com --port=443 --groups='GROUP'
