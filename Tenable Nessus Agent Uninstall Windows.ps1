#Option 1: Download the agent and use MSI to uninstall
Invoke-Webrequest -Uri "https://www.tenable.com/downloads/api/v2/pages/nessus/files/NessusAgent-11.1.2-x64.msi" -OutFile "C:\Windows\Temp\NessusAgent-11.1.2-x64.msi"
Start-Process -Wait "MsiExec.exe" -ArgumentList "/x C:\Windows\Temp\NessusAgent-11.1.2-x64.msi /qn /norestart"

Option 2: Uninstall using the GUID
Start-Process -Wait "MsiExec.exe" -ArgumentList "/X{D0822BC1-BFBE-44E9-BC56-7378EFE30433} /qn /norestart"
