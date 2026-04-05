curl --request GET \
  --url 'https://www.tenable.com/downloads/api/v2/pages/nessus/files/NessusAgent-11.1.2.dmg' \
  --output '/tmp/NessusAgent-11.1.2.dmg'
hdiutil attach /tmp/NessusAgent-11.1.2.dmg
sudo installer -pkg /Volumes/Nessus\ Agent\ Install/Install Nessus Agent.pkg -target /
sudo /Library/NessusAgent/run/sbin/nessuscli agent link --key=KEY --host=sensor.cloud.tenable.com --port=443 --groups=GROUPNAME 
