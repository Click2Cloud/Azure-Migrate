# Tailwind Traders Assessment

Technologies used:
 - .NET
 - SQL server 2019
 - MongoDB
## Assessment

### Application Discovery

* Application Discovery for Ubuntu VM (Database)
![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery-ubuntu.PNG?raw=true)

* Application Discovery for Windows VM (WebApp)
![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery1.PNG?raw=true)
![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery2.PNG?raw=true)
![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery3.PNG?raw=true)
![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-discovery4.PNG?raw=true)

### Application Dependency
* Application dependency for Ubuntu VM (database hosted- MSSQL and MongoDB)
![Application Dependency](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-dependency-databases.PNG?raw=true)

* Application dependency for Windows VM (WebApp)
![Application Dependency](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/application-dependency-webapp.PNG?raw=true)

### Steps for Server Assessment
1. Click on Azure Migrate Server Assessment Tool
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/srver-assessment1.PNG?raw=true)

2. Create groups for multiple dependent Servers and click on created group and procced for Assess server Option.
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/grouping-vms.PNG?raw=true)

3. Click on Created Assessment.
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/assessment1.PNG?raw=true.PNG)

4. You will redirect to Assessment Overview.
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment4.PNG?raw=true)

5. Click on Azure Readiness.
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment3.PNG?raw=true)

6. Click on Cost Details.
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment5.PNG?raw=true)

7. Click on Servers it will show you Migration tool sugestion and Reason why to use suggested tool.
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment6-ubuntu.PNG?raw=true)
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/server-assessment6-windows.PNG?raw=true)

### Steps for Database Assessment using Data Migration Assisstant

1. Create an assesment project.
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

### Steps for WebApp Assessment using Azure App Service Migration Assisstant

1. Download and open the Azure App Service Migration Assisstant. Select the app for assessment and start the assessment.
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/app-assessment1.PNG?raw=true)

2. Assessment report
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/app-assessment2.PNG?raw=true)
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders/app-assessment7.PNG?raw=true)
