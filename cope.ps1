# Chocolate PowerShell install Script
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# Install MSSQL SERVER
choco install mssqlserver2014-sqllocaldb -y

#Create Mssqllocaldb instance
sqllocaldb c MSSQLLocalDB
#Start Mssqllocaldb instance
sqllocaldb s MSSQLLocalDB

# Check for old deploy archive exist and remove if exist
$ChkFile = "C:\Publish.zip"
$FileExists = Test-Path $ChkFile
If ($FileExists -eq $True) {
Remove-Item C:\Publish.zip -Force
}
# Check for old deploy folder exist and remove if exist
$ChkFolder = "C:\Publish"
$FolderExists = Test-Path -path $ChkFolder
If ($FolderExists -eq $True) {
iisreset /stop
Remove-Item C:\Publish -Force -Recurse
iisreset /start
}

# Copy new deploy archive from Vagrant folder shared with Host and expand archive forcing all warnings
cp \\VBOXSVR\vagrant\Publish.zip C:\
Expand-Archive C:\Publish.zip C:\

#Run Command Line from Powershell to Import Database sqlcmd
cmd
sqlcmd -S (LocalDB)\MSSQLLocalDB -i \\VBOXSVR\vagrant\dbattach.sql
exit /B

# Start Configure IIS Service 
# Run Module for work with IIS
Import-Module WebAdministration

#Create new WebSite&WebAppPool with "Publish" Credentials
New-Item IIS:\Sites\Publish -Bindings @{protocol="http";bindingInformation="192.168.56.10:80:"} -PhysicalPath C:\Publish
cd IIS:\
New-Item AppPools\Publish
Set-ItemProperty IIS:\Sites\Publish -Name applicationPool -Value Publish
Set-ItemProperty IIS:\AppPools\Publish -name processModel -value @{identitytype=0}
Start-WebSite -Name "Publish"
