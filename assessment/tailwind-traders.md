# Tailwind Traders Assessment
Tailwind Traders is a fictitious retail company showcasing the future of intelligent application experiences. These reference apps are all are powered by the Azure cloud, built with best-in-class tools, and made smarter through data and AI.

The application that will be migrated is hosted on a Windows server 2016 running Internet Information Services (IIS), while the database is hosted on an ubuntu 16.04

Technologies used:
 - .NET
 - SQL server 2019
 - MongoDB v4.2.6

## Discover applications/roles/features

App discovery using Azure Migrate: Server Assessment is agentless. Nothing is installed on machines and VMs. Server Assessment uses the Azure Migrate appliance to perform discovery along with machine guest credentials. The appliance remotely accesses the VMware machines using VMware APIs.

1. In Azure Migrate - Servers > Azure Migrate: Server Assessment, click the displayed count to open the Discovered servers page.
2. In Applications discovered, click the displayed count.
3. In Application inventory, you can review the discovered apps, roles, and features.

* Application Discovery for TailWind Traders Database VM.

![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery-ubuntu.PNG?raw=true)

* Application Discovery for TailWind Traders Application VM.

![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery1.PNG?raw=true)

![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery2.PNG?raw=true)

![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery3.PNG?raw=true)

![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery4.PNG?raw=true)

## Application Dependency and Grouping

1. In Azure Migrate: Server Assessment, click Discovered servers.
2. In the Dependencies column, click View dependencies for each machine you want to review.
3. After you've identified the dependent machines on the dependency map that you want to group together, use Ctrl+Click to select multiple machines on the map, and click Group machines.

* Application dependency for Ubuntu VM (database hosted- MSSQL and MongoDB)

![Application Dependency](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-dependency-databases.PNG?raw=true)

* Application dependency for Windows VM (WebApp)

![Application Dependency](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-dependency-webapp.PNG?raw=true)

## Steps for Server Assessment
1. In the Servers tab, in Azure Migrate: Server Assessment tile, click Assess.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/srver-assessment1.PNG?raw=true)

2. In Assess servers, specify a name for the assessment. In Select or create a group, select Use Existing, and select a group created above. Click on Create Assessment.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/assessment-grouping.PNG?raw=true)

3. Click on Created Assessment.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/assessment1.PNG?raw=true.PNG)

4. You will redirect to Assessment Overview.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment4.PNG?raw=true)

5. Click on Azure Readiness.
Azure readiness show whether VMs are suitable for migration to Azure.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment3.PNG?raw=true)

6. Click on Cost Details.
It shows the estimated monthly compute and storage costs for running the VMs in Azure and Estimated costs for disk storage after migration.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment5.PNG?raw=true)

7. Click on Servers it will show you Migration tool sugestion and Reason why to use suggested tool.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment6-ubuntu.PNG?raw=true)

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment6-windows.PNG?raw=true)

## Steps for Database Assessment using Data Migration Assisstant

The Data Migration Assistant (DMA) helps you upgrade to a modern data platform by detecting compatibility issues that can impact database functionality in your new version of SQL Server or Azure SQL Database. DMA recommends performance and reliability improvements for your target environment and allows you to move your schema, data, and uncontained objects from your source server to your target server.

1. Create an assesment project.
   1.  On the left, select the + icon, and then select the assessment Project type.
   2. Specify the project name, and then select the source server and target server types.
   3. Select Create.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma1.PNG?raw=true)

2. Select report type and click Next.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma2.PNG?raw=true)

3. Enter source server details and connect to it.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma3.PNG?raw=true)

4. Select database for assessment.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma4.PNG?raw=true)

5. Start the assessment.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma5.PNG?raw=true)

6. Assessment results.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma6.PNG?raw=true)

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma7.PNG?raw=true)

7. Upload the assessment report to Azure console by connecting to the Azure account.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma8.PNG?raw=true)

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma9.PNG?raw=true)

8. Log in to the azure console, go to azure migrate and click on databases.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma10.PNG?raw=true)

9. Click on assessed database instances to find the assessed database list.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma11.PNG?raw=true)

10. Click on assessed database to view the assessment details.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/tailwind-dma12.PNG?raw=true)

## Steps for WebApp Assessment using Azure App Service Migration Assisstant

The App Service Migration Assistant is designed to simplify your journey to the cloud through a free, simple, and fast solution to migrate .Net applications from on-premises to the cloud.

1. Download and open the Azure App Service Migration Assisstant. Select the app for assessment and start the assessment.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/app-assessment1.PNG?raw=true)

2. Assessment report

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/app-assessment2.PNG?raw=true)

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/app-assessment7.PNG?raw=true)
