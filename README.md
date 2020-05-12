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
- This demo will be focused on describing the Assessment of source Server on azure cloud. 
- With enourmous capability of
    - Azure Migrate
- we can Assess VM which has any types of database which are pointing to any web application. 
- Before migration VM assessment is done using 
    - azure migrate: Server Assessment
        >- Discover installed applications, roles, and features with the Server Assessment tool in Azure Migrate.

2. App Modernization
- This demo will be focused on describing the Assessment of source Server, Applications and Databases on Azure cloud.
- With enourmous capability of
    - Azure Migrate
    - Data Migration Assistant
        >- The Data Migration Assistant (DMA) helps you upgrade to a modern data platform by detecting compatibility issues that can impact database functionality in your new version of SQL Server or Azure SQL Database.
        >- DMA recommends performance and reliability improvements for your target environment and allows you to move your schema, data, and uncontained objects from your source server to your target server.

    - App Service Migration Assistant
        >- The Migration Assistant tool is a local agent that performs a detailed assessment and then walks you through the migration process.

## Before start the demo please prepare souce infrastructure
- [Prerequisites ](assessment/petstore.md)
## Assessment
* Lift & Shift
    - [Example 1 for assessment](assessment/petstore.md)
        - Java Pet Store Application
        - MySQL Database
* App Modernization
    - [Example 1 for assessment](assessment/partsunlimited.md)
        - Parts Unlimited Application
        - SQL Server 2019 Database
    - [Example 2 for assessment](assessment/tailwind-traders.md)
        - Tailwinds Traders Application
        - SQL Server 2019 Database