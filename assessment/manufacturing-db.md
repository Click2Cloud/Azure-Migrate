# Manufacturing Database Assessment
The database that will be migrated is hosted on a Windows server 2016.

Technologies used:
 - Microsoft SQL Server 2019

## Application Discovery

App discovery using Azure Migrate: Server Assessment is agentless. Nothing is installed on machines and VMs. Server Assessment uses the Azure Migrate appliance to perform discovery along with machine guest credentials. The appliance remotely accesses the VMware machines using VMware APIs.

1. In **Azure Migrate - Servers > Azure Migrate: Server Assessment**, click the displayed count to open the **Discovered servers** page.
2. In **Applications discovered**, click the displayed count.
3. In **Application inventory**, you can review the discovered apps, roles, and features.

* Application Discovery for Manufacturing Database VM.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/application-discovery-database.PNG?raw=true">
</kbd></p>

## Application Dependency and Grouping

1. In **Azure Migrate: Server Assessment**, click **Discovered servers**.
2. In the **Dependencies** column, click **View dependencies** for each machine you want to review.
3. After you've identified the dependent machines on the dependency map that you want to group together, use Ctrl+Click to select multiple machines on the map, and click Group machines.

* Application dependency for Windows VM (database hosted- MSSQL)

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/application-dependency-databases.PNG?raw=true">
</kbd></p>

## Steps for Server Assessment
1. In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Assess**.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/sa-1.PNG?raw=true">
</kbd></p>

2. In **Assess servers**, specify a name for the assessment. In **Select or create a group**, select **Use Existing**, and select a group created above. Click on **Create Assessment**.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/sa-2.PNG?raw=true">
</kbd></p>

3. After the assessment is created, view it in **Servers** > **Azure Migrate: Server Assessment** > **Assessments**.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/sa-3.PNG?raw=true">
</kbd></p>

4. You will be redirected to **Assessment Overview**.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/sa-4.PNG?raw=true">
</kbd></p>

5. Click on **Azure Readiness**.
Azure readiness show whether VMs are suitable for migration to Azure.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/sa-5.PNG?raw=true">
</kbd></p>

6. Click on **Cost Details**.
It shows the estimated monthly compute and storage costs for running the VMs in Azure and Estimated costs for disk storage after migration.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/sa-6.PNG?raw=true">
</kbd></p>

7. Click on Servers it will show you Migration tool suggestion and Reason why to use suggested tool.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/sa-7.PNG?raw=true">
</kbd></p>

## Steps for Database Assessment using Data Migration Assistant

The Data Migration Assistant (DMA) helps you upgrade to a modern data platform by detecting compatibility issues that can impact database functionality in your new version of SQL Server or Azure SQL Database. DMA recommends performance and reliability improvements for your target environment and allows you to move your schema, data, and uncontained objects from your source server to your target server.

1. Create an assessment project.
   1.  On the left, select the + icon, and then select the assessment **Project type**.
   2. Specify the project name, and then select the source server and target server types.
   3. Click on **Create**.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-1.PNG?raw=true">
</kbd></p>

2. Select report type and click **Next**.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-2.PNG?raw=true">
</kbd></p>

3. Enter source server details and connect to it.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-3.PNG?raw=true">
</kbd></p>

4. Select database for assessment.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-4.PNG?raw=true">
</kbd></p>

5. Start the assessment.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-5.PNG?raw=true">
</kbd></p>

6. Assessment results.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-6.PNG?raw=true">
</kbd></p>

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-7.PNG?raw=true">
</kbd></p>

7. Upload the assessment report to Azure console by connecting to the Azure account.

<p><kbd>
   <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-8.PNG?raw=true">
</kbd></p>

<p><kbd>
   <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-9.PNG?raw=true">
</kbd></p>

<p><kbd>
   <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-10.PNG?raw=true">
</kbd></p>

8. Log in to the azure console, go to **azure migrate** and click on **databases**.

<p><kbd>
   <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-11.PNG?raw=true">
</kbd></p>

9. Click on **assessed database instances** to find the assessed database list.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-12.PNG?raw=true">
</kbd></p>

10. Click on assessed database to view the assessment details.

<p><kbd>
   <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/manufacturing-db/dma-13.PNG?raw=true">
</kbd></p>