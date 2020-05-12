# azure-migrate-demos
## Azure Migrate:
Azure Migrate provides a centralized hub to assess and migrate to Azure on-premises servers, infrastructure, applications, and data.
### It’s features:
* Unified migration platform: A single portal to start, run, and track your migration to Azure.
* Range of tools: A range of tools for assessment and migration. Tools include Azure Migrate: Server Assessment and Azure Migrate: Server Migration. Azure Migrate integrates with other Azure services and with other tools and independent software vendor (ISV) offerings.
* Assessment and migration: In the Azure Migrate hub, you can assess and migrate:
* Servers: Assess on-premises servers and migrate them to Azure virtual machines.
* Databases: Assess on-premises databases and migrate them to Azure SQL Database or to an Azure SQL Database managed instance.
* Web applications: Assess on-premises web applications and migrate them to Azure App Service by using the Azure App Service Migration Assistant.
* Virtual desktops: Assess your on-premises virtual desktop infrastructure (VDI) and migrate it to Windows Virtual Desktop in Azure.
* Data: Migrate large amounts of data to Azure quickly and cost-effectively using Azure Data Box products.
				
				
## Scenario				
1. Lift & Shift
> "This demo will be focused on describing the VM along with database migration on azure cloud. 
With enourmous capability of azure migrate, we can migrate VM which has any types of database which are pointing to any web application to azure cloud as is. Before migration VM assessment is done using azure migrate: Server Assessment.Once migration is completed, azure cloud databases are point to web application using hybrid connection string and validation will be performed on azure cloud."
2. App Modernization
> "This demo will be focused on describing the migration of web tier web app, the WCF service web app and database on azure cloud.
With enourmous capability of cloudbrain's migration feature and azure migrate, azure app service and database migration service , we can migrate web tier web app, the WCF service web app on azure app service and database migration using database migration service on azure.Integration of migrated web tier web app, the WCF service web app and databases is performed on azure cloud."

## Before start the demo please prepare souce infrastructure				
				
### Demo -1
#### Prerequisites
* Click Here.
#### Assessment
* Lift & Shift
    - Example 1
        - Java Pet Store Application
        - MySQL Database
    - [Assessment](assessment/petstore.md) Using
        > Azure Migrate Server Assessment
* App Modernization
    - Example 1
        - Parts Unlimited Application
        - SQL Server 2019 Database
    - [Assessment](assessment/partsunlimited.md) Using
        > Data Migration Assistant

        > App Service Migration Assistant
    - Example 2
        - Tailwinds Traders Application
        - SQL Server 2019 Database
    - [Assessment](assessment/tailwind-traders.md) Using
        > Data Migration Assistant

        > App Service Migration Assistant