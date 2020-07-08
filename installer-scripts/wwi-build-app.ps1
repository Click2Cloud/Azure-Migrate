git clone https://github.com/Click2Cloud/c2c-PartsUnlimited.git
cd c2c-PartsUnlimited\src\PartsUnlimitedWebsite
dotnet build
dotnet publish -o C:\inetpub\wwwroot
Stop-IISSite -Name "Default Web Site"
New-IISSite -Name 'wwi-app' -PhysicalPath 'C:\inetpub\wwwroot' -BindingInformation "*:80:"
exit 