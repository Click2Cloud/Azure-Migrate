sqlcmd -S $env:computername -i wwi-sales-db.sql
Restart-Service -FORCE MSSQLSERVER
exit 