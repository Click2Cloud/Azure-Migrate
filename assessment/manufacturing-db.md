# Manufacturing Database Assessment
The database that will be migrated is hosted on a Windows server 2016.

Technologies used:
 - Microsoft SQL Server 2019

## Steps for Application Discovery

App discovery using Azure Migrate: Server Assessment is agentless. Nothing is installed on machines and VMs. Server Assessment uses the Azure Migrate appliance to perform discovery along with machine guest credentials. The appliance remotely accesses the VMware machines using VMware APIs.

1. Log in to the azure console, Serach for **Azure Migrate** and click on **Azure Migrate**.

<p><kbd>
  <img src="../images/manufacturing-db/manu-db-assessment-1.png">
</kbd></p>

2. Using Azure Migrate you can Migrate your on-premise datacenter to Azure. Click on **Servers** tab for server Assessment and Migration.

<p><kbd>
  <img src="../images/manufacturing-db/manu-db-assessment-2.png">
</kbd></p>

3. For Assessment In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Discovered servers**.

Here you can see all the discovered servers from your on-premise data center **vCenter** which Azure appliance has discovered.

<p><kbd>
  <img src="../images/manufacturing-db/manu-db-assessment-3.png">
</kbd></p>

4. In **Applications discovered**, click the displayed count.
* In **Application inventory**, you can review the discovered apps, roles, and features.

* Application Discovery for Manufacturing Database VM.
<p><kbd>
  <img src="../images/manufacturing-db/manu-db-assessment-4.png">
</kbd></p>

<p><kbd>
  <img src="../images/manufacturing-db/application-discovery-database.png">
</kbd></p>

## Steps for Application Dependency and Grouping

1. Log in to the azure console, Serach for **Azure Migrate** and click on **Azure Migrate**.

<p><kbd>
  <img src="../images/manufacturing-db/manu-db-assessment-1.png">
</kbd></p>

2. Using Azure Migrate you can Migrate your on-premise datacenter to Azure. Click on **Servers** tab for server Assessment and Migration.

<p><kbd>
  <img src="../images/manufacturing-db/manu-db-assessment-2.png">
</kbd></p>

3. For Assessment In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Discovered servers**.

Here you can see all the  servers from your on-premise data center **vCenter** discovered by Azure Migrate appliance.

<p><kbd>
  <img src="../images/manufacturing-db/sa-1.png">
</kbd></p>

<p><kbd>
  <img src="../images/manufacturing-db/manu-db-assessment-3.png">
</kbd></p>

4. In the **Dependencies** column, click **View dependencies** for each machine you want to review.
5. After you've identified the dependent machines on the dependency map that you want to group together, use Ctrl+Click to select multiple machines on the map, and click Group machines.

* Application dependency for Windows VM (database hosted- MSSQL)

<p><kbd>
  <img src="../images/manufacturing-db/application-dependency-databases.png">
</kbd></p>

## Steps for Azure Readiness and Total cost of Ownership

1. Log in to the azure console, Serach for **Azure Migrate** and click on **Azure Migrate**.

<p><kbd>
  <img src="../images/manufacturing-db/manu-db-assessment-1.png">
</kbd></p>

2. Using Azure Migrate you can Migrate your on-premise datacenter to Azure. Click on **Servers** tab for server Assessment and Migration.

<p><kbd>
  <img src="../images/manufacturing-db/manu-db-assessment-2.png">
</kbd></p>

3. In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Assess servers**.

<p><kbd>
  <img src="../images/manufacturing-db/sa-1.png">
</kbd></p>

2. In **Assess servers**, specify a name for the assessment. In **Select or create a group**, select **Use Existing**, and select a group created above. Click on **Create Assessment**.

<p><kbd>
  <img src="../images/manufacturing-db/sa-2.png">
</kbd></p>

3. After the assessment is created, view it in **Servers** > **Azure Migrate: Server Assessment** > **Assessments**.

<p><kbd>
  <img src="../images/manufacturing-db/sa-3.png">
</kbd></p>

4. You will be redirected to **Assessment Overview**.

<p><kbd>
  <img src="../images/manufacturing-db/sa-4.png">
</kbd></p>

5. Click on **Azure Readiness**.
Azure readiness show whether VMs are suitable for migration to Azure.

<p><kbd>
  <img src="../images/manufacturing-db/sa-5.png">
</kbd></p>

6. Click on **Cost Details**.
It shows the estimated monthly compute and storage costs for running the VMs in Azure and Estimated costs for disk storage after migration.

<p><kbd>
  <img src="../images/manufacturing-db/sa-6.png">
</kbd></p>

7. Click on Servers it will show you Migration tool suggestion and Reason why to use suggested tool.

<p><kbd>
  <img src="../images/manufacturing-db/sa-7.png">
</kbd></p>

## Steps for Database Assessment using Data Migration Assistant

The Data Migration Assistant (DMA) helps you upgrade to a modern data platform by detecting compatibility issues that can impact database functionality in your new version of SQL Server or Azure SQL Database. DMA recommends performance and reliability improvements for your target environment and allows you to move your schema, data, and uncontained objects from your source server to your target server.

1. Create an assessment project.
   1.  On the left, select the + icon, and then select the assessment **Project type**.
   2. Specify the project name, and then select the source server and target server types.
   3. Click on **Create**.

<p><kbd>
  <img src="../images/manufacturing-db/dma-1.png">
</kbd></p>

2. Select report type and click **Next**.

<p><kbd>
  <img src="../images/manufacturing-db/dma-2.png">
</kbd></p>

3. Enter source server details and connect to it.

<p><kbd>
  <img src="../images/manufacturing-db/dma-3.png">
</kbd></p>

4. Select database for assessment.

<p><kbd>
  <img src="../images/manufacturing-db/dma-4.png">
</kbd></p>

5. Start the assessment.

<p><kbd>
  <img src="../images/manufacturing-db/dma-5.png">
</kbd></p>

6. Assessment results.

<p><kbd>
  <img src="../images/manufacturing-db/dma-6-new.png">
</kbd></p>

<p><kbd>
  <img src="../images/manufacturing-db/dma-7.png">
</kbd></p>

7. Upload the assessment report to Azure console by connecting to the Azure account.

<p><kbd>
   <img src="../images/manufacturing-db/dma-8.png">
</kbd></p>

<p><kbd>
   <img src="../images/manufacturing-db/dma-9.png">
</kbd></p>

<p><kbd>
   <img src="../images/manufacturing-db/dma-10.png">
</kbd></p>

8. Log in to the azure console, go to **azure migrate** and click on **databases**.

<p><kbd>
   <img src="../images/manufacturing-db/dma-11.png">
</kbd></p>

9. Click on **assessed database instances** to find the assessed database list.

<p><kbd>
  <img src="../images/manufacturing-db/dma-12.png">
</kbd></p>

10. Click on assessed database to view the assessment details.

<p><kbd>
   <img src="../images/manufacturing-db/dma-13.png">
</kbd></p>