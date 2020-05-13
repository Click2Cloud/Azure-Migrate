# PartsUnlimited Assessment

Technologies used:
 - .NET
 - SQL server 2019
## Assessment

### Application Discovery
- Discovery of Applications from server

![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Application%20Discovery%20for%20Partsunlimited.png?raw=true)

### Application Dependency
- Shows Dependency topology of Applications from one or more dependent servers

![Application Dependency](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Application%20Dependency%20for%20PartsUnlimited.png?raw=true)

### Steps for Server Assessment
1. Click on Azure Migrate Server Assessment Tool
- Azure Migrate Dashboard for Server Assessment which includes:
        - Discovered Servers
        - Groups
        - Assessments
        - Notifications

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Dashboard%20Server%20Assessment%20PartsUnlimited.png?raw=true)

2. Create groups for multiple dependent Servers and click on created group and proceed for Assess server Option.
    - Group includes: 
        - How many machines are in the group. and from where you can perform following operations:
        - Add Machines to the group
        - Remove Machines from the group
        - Assess Servers / Create Assessment
        - View Dependencies
        - Delete Group

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Group%20Created%20for%20server%20assessment.png?raw=true)

3. Click on Created Assessment.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Assessment%20Created.png?raw=true)

4. You will redirect to Assessment Overview.
    - Overview includes:
        - Azure Readiness
        - Monthly Cost Estimate
        - Storage Monthly Cost Estimate

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Assessment%20Overview.png?raw=true)

5. Click on Azure Readiness.
    - Azure Readiness includes:
        - Ready for Azure
        - Ready with conditions
        - Not Ready for Azure
        - Readiness unknown

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Azure%20readiness.png?raw=true)

6. Click on Cost Details.
    - Cost Details includes:
        - Compute Cost
        - Storage Cost
            - Standard HDD Managed disks
            - Standard SSD Managed disks
            - Premium managed disks

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Cost%20Details.png?raw=true)

7. Click on Server on which Applications are installed.
    - It includes:
        - Migration tool suggestions
        - Reason why to use suggested tool
        - Compute details
        - Storage details
        - Network details

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Reason%20to%20use%20tool%201.png?raw=true)
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Reason%20to%20use%20tool%202.png?raw=true)

### Steps for Database Assessment using Data Migration Assistant

1. Create an assessment project.
    - Project to perform the Assessment of the Source Server.
    - where we have to provide
        - Project Name
        - 

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Create%20assessment%20project.png?raw=true)

2. Select report type and click Next.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Select%20Report%20Type.png?raw=true)

3. Enter source server details and connect to it.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Source%20server%20details.png?raw=true)

4. Select database for assessment.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Select%20Database%20for%20assessment.png?raw=true)

5. Start the assessment.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Start%20the%20assessment.png?raw=true)

6. Assessment results.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Assessment%20result%201.png?raw=true)
![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Assessment%20result%202.png?raw=true)

7. Upload the assessment report to Azure console by connecting to the Azure account.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Upload%20to%20Azure%20migrate.png?raw=true)

8. Log in to the azure console, go to azure migrate and click on databases.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/on%20Azure%20migrate%20console.png?raw=true)

9. Click on assessed database instances to find the assessed database list.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/assess%20instances.png?raw=true)

10. Click on assessed database to view the assessment details.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/assess%20db.png?raw=true)

### Steps for WebApp Assessment using Azure App Service Migration Assistant

1. Download and open the Azure App Service Migration Assistant. Select the app for assessment and start the assessment.

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Application%20Assessment.png?raw=true)

2. Assessment report

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Application%20Assessment%20dettailed.png?raw=true)
