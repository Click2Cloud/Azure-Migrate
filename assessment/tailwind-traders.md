# Tailwind Traders Assessment

Technologies used:
 - .NET
 - SQL server 2019
 - MongoDB
## Assessment

### Application Discovery

* Application Discovery for Ubuntu VM (Database)
![Application Discovery](images/tailwind-traders/application-discovery-ubuntu.PNG)

* Application Discovery for Windows VM (WebApp)
![Application Discovery](images/tailwind-traders/application-discovery1.PNG)
![Application Discovery](images/tailwind-traders/application-discovery2.PNG)
![Application Discovery](images/tailwind-traders/application-discovery3.PNG)
![Application Discovery](images/tailwind-traders/application-discovery4.PNG)

### Application Dependency
* Application dependency for Ubuntu VM (database hosted- MSSQL and MongoDB)
![Application Dependency](images/tailwind-traders/application-dependency-databases.PNG)

* Application dependency for Windows VM (WebApp)
![Application Dependency](images/tailwind-traders/application-dependency-webapp.PNG)

### Steps for Server Assessment
1. Click on Azure Migrate Server Assessment Tool
![Assessment](images/tailwind-traders/srver-assessment1.PNG)

2. Create groups for multiple dependent Servers and click on created group and procced for Assess server Option.
![Assessment](images/tailwind-traders/grouping-vms.PNG)

3. Click on Created Assessment.
![Assessment](images/tailwind-traders/assessment1.PNG)

4. You will redirect to Assessment Overview.
![Assessment](images/tailwind-traders/server-assessment4.PNG)

5. Click on Azure Readiness.
![Assessment](images/tailwind-traders/server-assessment3.PNG)

6. Click on Cost Details.
![Assessment](images/tailwind-traders/server-assessment5.PNG)

5. Click on Servers it will show you Migration tool sugestion and Reason why to use suggested tool.
![Assessment](images/tailwind-traders/server-assessment6-ubuntu.PNG)
![Assessment](images/tailwind-traders/server-assessment6-windows.PNG)

### Steps for Database Assessment using Data Migration Assisstant

1. Create an assesment project.
![Assessment](images/tailwind-traders/tailwind-dma1.PNG)

2. Select report type and click Next.
![Assessment](images/tailwind-traders/tailwind-dma2.PNG)

3. Enter source server details and connect to it.
![Assessment](images/tailwind-traders/tailwind-dma3.PNG)

4. Select database for assessment.
![Assessment](images/tailwind-traders/tailwind-dma4.PNG)

5. Start the assessment.
![Assessment](images/tailwind-traders/tailwind-dma5.PNG)

6. Assessment results.
![Assessment](images/tailwind-traders/tailwind-dma6.PNG)
![Assessment](images/tailwind-traders/tailwind-dma7.PNG)

7. Upload the assessment report to Azure console by connecting to the Azure account.
![Assessment](images/tailwind-traders/tailwind-dma8.PNG)
![Assessment](images/tailwind-traders/tailwind-dma9.PNG)

8. Log in to the azure console, go to azure migrate and click on databases.
![Assessment](images/tailwind-traders/tailwind-dma10.PNG)

9. Click on assessed database instances to find the assessed database list.
![Assessment](images/tailwind-traders/tailwind-dma11.PNG)

10. Click on assessed database to view the assessment details.
![Assessment](images/tailwind-traders/tailwind-dma12.PNG)

### Steps for WebApp Assessment using Azure App Service Migration Assisstant

1. Download and open the Azure App Service Migration Assisstant. Select the app for assessment and start the assessment.
![Assessment](images/tailwind-traders/app-assessment1.PNG)

2. Assessment report
![Assessment](images/tailwind-traders/app-assessment2.PNG)
![Assessment](images/tailwind-traders/app-assessment7.PNG)
