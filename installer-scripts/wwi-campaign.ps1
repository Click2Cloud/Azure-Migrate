sqlcmd -i wwi-campaign-schema.sql

Restart-Service -FORCE "SQL Server (SQLEXPRESS)"

exit