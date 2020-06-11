# World Wide Importers Database Assessment
This is an overview of the fictitious company Wide World Importers and the workflows that are addressed in the WideWorldImporters sample databases for SQL Server and Azure SQL Database.

Wide World Importers (WWI) is a wholesale novelty goods importer and distributor operating from the San Francisco bay area.

The database that will be migrated is hosted on a Windows server 2016.

Technologies used:
 - Microsoft SQL Server 2019

## Application Discovery

App discovery using Azure Migrate: Server Assessment is agentless. Nothing is installed on machines and VMs. Server Assessment uses the Azure Migrate appliance to perform discovery along with machine guest credentials. The appliance remotely accesses the VMware machines using VMware APIs.

1. In **Azure Migrate - Servers > Azure Migrate: Server Assessment**, click the displayed count to open the **Discovered servers** page.
2. In **Applications discovered**, click the displayed count.
3. In **Application inventory**, you can review the discovered apps, roles, and features.

* Application Discovery for Database VM.

<p><kbd>
  <img src="../images/wide-world-importers/application-discovery1.PNG">
</kbd></p>
<p><kbd>
  <img src="../images/wide-world-importers/application-discovery2.PNG">
</kbd></p>
<p><kbd>
  <img src="../images/wide-world-importers/application-discovery3.PNG">
</kbd></p>
<p><kbd>
  <img src="../images/wide-world-importers/application-discovery4.PNG">
</kbd></p>

## Application Dependency

1. In **Azure Migrate: Server Assessment**, click **Discovered servers**.
2. In the **Dependencies** column, click **View dependencies** for each machine you want to review.

* Application dependency for Windows VM (SQL Database)

<p><kbd>
  <img src="../images/wide-world-importers/application-dependency.PNG">
</kbd></p>

## Steps for Server Assessment
1. In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Assess**.
    - Azure Migrate Dashboard for Server Assessment which includes:
        - Discovered Servers
        - Groups
        - Assessments
        - Notifications

<p><kbd>
  <img src="../images/tailwind-traders/assessment.PNG">
</kbd></p>

2. In **Assess servers**, specify a name for the assessment. In **Select or create a group**, select **Create New**, and select virtual machine to create a group. Click on **Create Assessment**.

<p><kbd>
  <img src="../images/wide-world-importers/server-assessment-1.PNG">
</kbd></p>

3. After the assessment is created, view it in **Servers** > **Azure Migrate: Server Assessment** > **Assessments**.

<p><kbd>
  <img src="../images/wide-world-importers/server-assessment-2.PNG">
</kbd></p>

4. You will be redirected to **Assessment Overview**.

<p><kbd>
  <img src="../images/wide-world-importers/server-assessment-3.PNG">
</kbd></p>

5. Click on **Azure Readiness**.
Azure readiness show whether VMs are suitable for migration to Azure.

<p><kbd>
  <img src="../images/wide-world-importers/server-assessment-4.PNG">
</kbd></p>

6. Click on **Cost Details**.
It shows the estimated monthly compute and storage costs for running the VMs in Azure and Estimated costs for disk storage after migration.

<p><kbd>
  <img src="../images/wide-world-importers/server-assessment-5.PNG">
</kbd></p>

7. Click on Servers it will show you Migration tool suggestion and Reason why to use suggested tool.

<p><kbd>
  <img src="../images/wide-world-importers/server-assessment-6.PNG">
</kbd></p>

## Steps for Database Assessment using Data Migration Assistant

The Data Migration Assistant (DMA) helps you upgrade to a modern data platform by detecting compatibility issues that can impact database functionality in your new version of SQL Server or Azure SQL Database. DMA recommends performance and reliability improvements for your target environment and allows you to move your schema, data, and uncontained objects from your source server to your target server.

1. Create an assessment project.
   1.  On the left, select the + icon, and then select the assessment **Project type**.
   2. Specify the project name, and then select the source server and target server types.
   3. Click on **Create**.

<p><kbd>
  <img src="../images/wide-world-importers/dma-1.PNG">
</kbd></p>

2. Select report type and click **Next**.

<p><kbd>
  <img src="../images/wide-world-importers/dma-2.PNG">
</kbd></p>

3. Enter source server details and connect to it.

<p><kbd>
  <img src="../images/wide-world-importers/dma-3.PNG">
</kbd></p>

4. Select database for assessment.

<p><kbd>
  <img src="../images/wide-world-importers/dma-4.PNG">
</kbd></p>

5. Start the assessment.

<p><kbd>
  <img src="../images/wide-world-importers/dma-5.PNG">
</kbd></p>

6. Assessment results.

<p><kbd>
  <img src="../images/wide-world-importers/dma-6-new.png">
</kbd></p>

<p><kbd>
  <img src="../images/wide-world-importers/dma-7.PNG">
</kbd></p>

7. Upload the assessment report to Azure console by connecting to the Azure account.

<p><kbd>
   <img src="../images/wide-world-importers/dma-8.PNG">
</kbd></p>

<p><kbd>
   <img src="../images/wide-world-importers/dma-9.PNG">
</kbd></p>

8. Log in to the azure console, go to **azure migrate** and click on **databases**.

<p><kbd>
   <img src="../images/wide-world-importers/dma-10.PNG">
</kbd></p>

9. Click on **assessed database instances** to find the assessed database list.

<p><kbd>
  <img src="../images/wide-world-importers/dma-11.PNG">
</kbd></p>

10. Click on assessed database to view the assessment details.

<p><kbd>
   <img src="../images/wide-world-importers/dma-12.PNG">
</kbd></p>