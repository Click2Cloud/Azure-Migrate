sqlcmd -S $env:computername\SQLEXPRESS -i wwi-campaign-schema.sql

$output1 = "C:\Users\Administrator\sqlserver2005SSMSE.msi"
Start-Process $output1 /quiet

exit