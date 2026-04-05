Invoke-Webrequest -Uri "https://www.tenable.com/downloads/api/v2/pages/nessus/files/NessusAgent-11.1.2-x64.msi" -OutFile "C:\Windows\Temp\NessusAgent-11.1.2-x64.msi"
Start-Process -Wait msiexec.exe -ArgumentList "/i C:\Windows\Temp\NessusAgent-11.1.2-x64.msi NESSUS_GROUPS=`"GROUP`" NESSUS_SERVER=`"sensor.cloud.tenable.com:443`" NESSUS_KEY=KEY /qn"
#If linking fails
Start-Process -Wait "C:\Program Files\Tenable\Nessus Agent\nessuscli.exe" -ArgumentList "agent link --key=KEY --host=sensor.cloud.tenable.com --port=443 --groups=`"GROUP`""
