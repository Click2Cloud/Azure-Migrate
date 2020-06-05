# PartsUnlimited Application Assessment
Parts Unlimited is an example eCommerce website site based for training purposes.

The application that will be migrated is hosted on a Windows server 2016 running Internet Information Services (IIS), while the database is hosted on an ubuntu 16.04

Technologies used:
 - .NET Core v2.2.104
 - Microsoft SQL server 2019

## Application Discovery
App discovery using Azure Migrate: Server Assessment is agentless. Nothing is installed on machines and VMs. Server Assessment uses the Azure Migrate appliance to perform discovery along with machine guest credentials. The appliance remotely accesses the VMware machines using VMware APIs.

1. In **Azure Migrate - Servers > Azure Migrate: Server Assessment**, click the displayed count to open the **Discovered servers** page.
2. In **Applications discovered**, click the displayed count.
3. In **Application inventory**, you can review the discovered apps, roles, and features.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Application%20Discovery%20for%20Partsunlimited.png?raw=true">
</kbd></p>

## Application Dependency and Grouping

1. In **Azure Migrate: Server Assessment**, click **Discovered servers**.
2. In the **Dependencies** column, click **View dependencies** for each machine you want to review.
3. After you've identified the dependent machines on the dependency map that you want to group together, use Ctrl+Click to select multiple machines on the map, and click Group machines.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/Application%20Dependency%20for%20PartsUnlimited.png?raw=true">
</kbd></p>

## Steps for Server Assessment
1. In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Assess**.
    - Azure Migrate Dashboard for Server Assessment which includes:
        - Discovered Servers
        - Groups
        - Assessments
        - Notifications

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/server-assessment-1.png?raw=true">
</kbd></p>

2. In **Assess servers**, specify a name for the assessment. In **Select or create a group**, select **Use Existing**, and select a group created above. Click on **Create Assessment**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/server-assessment-2.png?raw=true">
</kbd></p>

3. After the assessment is created, view it in **Servers** > **Azure Migrate: Server Assessment** > **Assessments**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/server-assessment-3.png?raw=true">
</kbd></p>

4. You will be redirected to **Assessment Overview**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/server-assessment-4.png?raw=true">
</kbd></p>

5. Click on **Azure Readiness**.
Azure readiness show whether VMs are suitable for migration to Azure.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/server-assessment-5.png?raw=true">
</kbd></p>

6. Click on **Cost Details**.
It shows the estimated monthly compute and storage costs for running the VMs in Azure and Estimated costs for disk storage after migration.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/server-assessment-6.png?raw=true">
</kbd></p>

7. Click on Servers it will show you Migration tool suggestion and Reason why to use suggested tool.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/server-assessment-7a.png?raw=true">
</kbd></p>

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/server-assessment-7b.png?raw=true">
</kbd></p>

## Steps for Database Assessment using Data Migration Assistant

The Data Migration Assistant (DMA) helps you upgrade to a modern data platform by detecting compatibility issues that can impact database functionality in your new version of SQL Server or Azure SQL Database. DMA recommends performance and reliability improvements for your target environment and allows you to move your schema, data, and uncontained objects from your source server to your target server.

1. Create an assessment project.
   1.  On the left, select the + icon, and then select the assessment **Project type**.
   2. Specify the project name, and then select the source server and target server types.
   3. Click on **Create**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-1.png?raw=true">
</kbd></p>

2. Select report type and click **Next**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-2.png?raw=true">
</kbd></p>

3. Enter source server details and connect to it.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-3.png?raw=true">
</kbd></p>

4. Select database for assessment.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-4.png?raw=true">
</kbd></p>

5. Start the assessment.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-5.png?raw=true">
</kbd></p>

6. Assessment results.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-6a.png?raw=true">
</kbd></p>

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-6b.png?raw=true">
</kbd></p>

7. Upload the assessment report to Azure console by connecting to the Azure account.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-7.png?raw=true">
</kbd></p>

8. Log in to the azure console, go to **azure migrate** and click on **databases**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-8.png?raw=true">
</kbd></p>

9. Click on **assessed database instances** to find the assessed database list.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-9.png?raw=true">
</kbd></p>

10. Click on assessed database to view the assessment details.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/database-assessment-10.png?raw=true">
</kbd></p>

## Steps for WebApp Assessment using Azure App Service Migration Assistant

The App Service Migration Assistant is designed to simplify your journey to the cloud through a free, simple, and fast solution to migrate .Net applications from on-premises to the cloud.

1. Download and open the Azure App Service Migration Assistant. Select the app for assessment and start the assessment.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/app-assessment-1.png?raw=true">
</kbd></p>

2. Select the partsunilimited site and click Next, the site will be assessed for compatibility with Azure App Services.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/partsunlimited/app-assessment-2.png?raw=true">
</kbd></p>
