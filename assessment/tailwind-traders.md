# Tailwind Traders Assessment

Technologies used:
 - .NET
 - SQL server 2019
 - MongoDB
## Assessment

### Application Discovery

* Application Discovery for Ubuntu VM (Database)
![Application Discovery](/images/tailwind-traders/application-discovery-ubuntu.png)

* Application Discovery for Windows VM (WebApp)
![Application Discovery](/images/tailwind-traders/application-discovery1.png)
![Application Discovery](/images/tailwind-traders/application-discovery2.png)
![Application Discovery](/images/tailwind-traders/application-discovery3.png)
![Application Discovery](/images/tailwind-traders/application-discovery4.png)

### Application Dependency
* Application dependency for Ubuntu VM (database hosted- MSSQL and MongoDB)
![Application Dependency](/images/tailwind-traders/application-dependency-databases.png)

* Application dependency for Windows VM (WebApp)
![Application Dependency](/images/tailwind-traders/application-dependency-webapp.png)

### Steps for Server Assessment
1. Click on Azure Migrate Server Assessment Tool
![Assessment](/images/tailwind-traders/srver-assessment1.png)

2. Create groups for multiple dependent Servers and click on created group and procced for Assess server Option.
![Assessment](/images/tailwind-traders/grouping-vms.png)

3. Click on Created Assessment.
![Assessment](/images/tailwind-traders/assessment1.png)

4. You will redirect to Assessment Overview.
![Assessment](/images/tailwind-traders/server-assessment4.png)

5. Click on Azure Readiness.
![Assessment](/images/tailwind-traders/server-assessment3.png)

6. Click on Cost Details.
![Assessment](/images/tailwind-traders/server-assessment5.png)

5. Click on Servers it will show you Migration tool sugestion and Reason why to use suggested tool.
![Assessment](/images/tailwind-traders/server-assessment6-ubuntu.png)
![Assessment](/images/tailwind-traders/server-assessment6-windows.png)

### Steps for Database Assessment using Data Migration Assisstant

1. Create an assesment project.
![Assessment](/images/tailwind-traders/tailwind-dma1.png)

2. Select report type and click Next.
![Assessment](/images/tailwind-traders/tailwind-dma2.png)

3. Enter source server details and connect to it.
![Assessment](/images/tailwind-traders/tailwind-dma3.png)

4. Select database for assessment.
![Assessment](/images/tailwind-traders/tailwind-dma4.png)

5. Start the assessment.
![Assessment](/images/tailwind-traders/tailwind-dma5.png)

6. Assessment results.
![Assessment](/images/tailwind-traders/tailwind-dma6.png)
![Assessment](/images/tailwind-traders/tailwind-dma7.png)

7. Upload the assessment report to Azure console by connecting to the Azure account.
![Assessment](/images/tailwind-traders/tailwind-dma8.png)
![Assessment](/images/tailwind-traders/tailwind-dma9.png)

8. Log in to the azure console, go to azure migrate and click on databases.
![Assessment](/images/tailwind-traders/tailwind-dma10.png)

9. Click on assessed database instances to find the assessed database list.
![Assessment](/images/tailwind-traders/tailwind-dma11.png)

10. Click on assessed database to view the assessment details.
![Assessment](/images/tailwind-traders/tailwind-dma12.png)

### Steps for WebApp Assessment using Azure App Service Migration Assisstant

1. Download and open the Azure App Service Migration Assisstant. Select the app for assessment and start the assessment.
![Assessment](/images/tailwind-traders/app-assessment1.png)

2. Assessment report
![Assessment](/images/tailwind-traders/app-assessment2.png)
![Assessment](/images/tailwind-traders/app-assessment7.png)
