# Wide World Importers Database Assessment
* WWI has its own e-Commerce Platform where they sell WWI Brand Merchandise.
* This WWI is on on-premise infrastructure.
* WWI wants to migrate their workload on Azure cloud.

The database that will be migrated is hosted on a Windows server 2016.

Technologies used:
 - Microsoft SQL Server 2017

## Steps for Application Discovery

* App discovery using Azure Migrate: Server Assessment is agentless. 
* Nothing is installed on machines and VMs. 
* Server Assessment uses the Azure Migrate appliance to perform discovery along with machine guest credentials. 
* The appliance remotely accesses the VMware machines using VMware APIs.

1. Log in to the azure console, Search for **Azure Migrate** and click on **Azure Migrate**.

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-1.png">
</kbd></p>

2. Using Azure Migrate you can Migrate your on-premise datacenter to Azure. Click on **Servers** tab for server Assessment and Migration.

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-2.png">
</kbd></p>

3. For Assessment In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Discovered servers**.

Here you can see all the discovered servers from your on-premise data center **vCenter** which Azure appliance has discovered.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-assessment-1.PNG">
</kbd></p>

<p><kbd>
  <img src="../images/WWI-eCommerce/server-assessment-2.PNG">
</kbd></p>

4. In **Applications discovered**, click the displayed count.
* In **Application inventory**, you can review the discovered apps, roles, and features.

* Application Discovery for WWI-eCommerce Database VM.

<p><kbd>
  <img src="../images/WWI-eCommerce/application-discovery-database.PNG">
</kbd></p>

## Steps for Application Dependency and Grouping

Dependency mapping helps you to visualize dependencies across machines. You typically use dependency mapping when you want to assess machine groups with higher levels of confidence.
- It helps you to cross-check machine dependencies, before you run an assessment.
- It also helps to effectively plan your migration to Azure, by ensuring that nothing is left behind, and thus avoiding surprise outages during migration.
- You can discover interdependent systems that need to migrate together, and identify whether a running system is still serving users, or is a candidate for decommissioning instead of migration.

Dependency Visualization can be done in two ways:
1. Agent-Based
2. Agentless

### Agent-Based Dependency Visualization

> Steps for installing dependency agent on VMs can be found [here](https://docs.microsoft.com/en-us/azure/migrate/how-to-create-group-machine-dependencies)

1. In the **Dependencies** column, click **View dependencies** for each machine you want to review.
2. After you have identified the dependent machines on the dependency map that you want to group together, use Ctrl+Click to select multiple machines on the map, and click Group machines.

* Application dependency for Windows VM (database hosted- MSSQL Server 2017)

<p><kbd>
  <img src="../images/WWI-eCommerce/application-dependency-database.png">
</kbd></p>


### Agentless Dependency Visualization

1. In **Azure Migrate: Server Assessment**, click **Discovered servers**

<p><kbd>
  <img src="../images/WWI-eCommerce/server-assessment-1.PNG">
</kbd></p>

2. Click to get the access of agentless dependency preview.

<p><kbd>
  <img src="../images/WWI-eCommerce/agentless-dependency3.PNG">
</kbd></p>

3. To get the agentless dependency preview access fill the form, you will get a link. Click on the link.

<p><kbd>
  <img src="../images/WWI-eCommerce/agentless-dependency2.PNG">
</kbd></p>

4. You will be redirected to **Azure Migrate**: **Server Assessment**.  
Click the **Dependency analysis** icon.  
Click **Add servers**.

<p><kbd>
  <img src="../images/WWI-eCommerce/agentless-dependency4.PNG">
</kbd></p>

5. Select the servers.  
Click **Add servers**.

<p><kbd>
  <img src="../images/WWI-eCommerce/agentless-dependency5.PNG">
</kbd></p>

6. You can visualize dependencies around six hours after starting dependency discovery.  
In the Dependencies column, click **View dependencies**.
<p><kbd>
  <img src="../images/WWI-eCommerce/agentless-dependency6.PNG">
</kbd></p>


## Steps for Azure Readiness and Total Cost of Ownership

1. In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Assess**.

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-3.png">
</kbd></p>

2. In **Assess servers**, select the assessment type as **Azure VM**, select the discovery source and specify the assessment name.

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-5.png">
</kbd></p>

3. Select **View all**, and then review the assessment properties and click **Save**.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-assessment-3.PNG">
</kbd></p>

4. Click next to Select machines to assess. In **Select or create a group**, select **Use Existing**, and select a group created above. Click **Next** to review the assessment details.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-assessment-4.PNG">
</kbd></p>

5. Select **Create Assessment** to run the assessment.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-assessment-5.PNG">
</kbd></p>

6. After the assessment is created, view it in **Servers** > **Azure Migrate: Server Assessment** > **Assessments**.  

    Each performance-based Azure VM assessment in Azure Migrate is associated with a confidence rating. The rating ranges from one (lowest) to five (highest) stars. The confidence rating helps you to estimate the reliability of the size recommendations Azure Migrate provides. Azure migrate recommends to performs assessment after 24 hours of discovery to get accurate and reliable assessment results.

    - The confidence rating is assigned to an assessment. The rating is based on the availability of data points that are needed to compute the assessment.
    - For performance-based sizing, Server Assessment needs:
      * The utilization data for CPU and VM RAM.
      * The disk IOPS and throughput data for every disk attached to the VM.
      * The network I/O to handle performance-based sizing for each network adapter attached to a VM.  

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-6.png">
</kbd></p>

7. You will be redirected to **Assessment Overview**. Here we are using Demo specific Server and Data, so cost may differ for you.

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-7.png">
</kbd></p>

8. Click on **Azure Readiness**.
Azure Readiness show whether VMs are suitable for migration to Azure.

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-8.png">
</kbd></p>

9. Click on **Cost Details**.
It shows the estimated monthly compute and storage costs for running the VMs in Azure and Estimated costs for disk storage after migration.

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-9.png">
</kbd></p>

10. Click on Servers it will show you Migration tool suggestion and Reason why to use suggested tool.

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-10-db.png">
</kbd></p>

## Steps for Database Assessment using **Data Migration Assistant**

1. [Download](https://www.microsoft.com/en-us/download/details.aspx?id=53595) and open the Azure Data Migration Assistant then create an assessment project.
   1.  On the left, select the + icon, and then select the assessment **Project type**.
   2. Specify the project name, and then select the source server and target server types.
   3. Click on **Create**.

<p><kbd>
  <img src="../images/WWI-eCommerce/dma-1.png">
</kbd></p>

2. Select report type and click **Next**.

<p><kbd>
  <img src="../images/WWI-eCommerce/dma-2.png">
</kbd></p>

3. Enter source server details and connect to it.

<p><kbd>
  <img src="../images/WWI-eCommerce/dma-3.png">
</kbd></p>

4. Select database for assessment.

<p><kbd>
  <img src="../images/WWI-eCommerce/dma-4.png">
</kbd></p>

5. Start the assessment.

<p><kbd>
  <img src="../images/WWI-eCommerce/dma-5.png">
</kbd></p>

6. Assessment results.

<p><kbd>
  <img src="../images/WWI-eCommerce/dma-6.png">
</kbd></p>

<p><kbd>
  <img src="../images/WWI-eCommerce/dma-7.png">
</kbd></p>

7. Upload the assessment report to Azure console by connecting to the Azure account.

<p><kbd>
   <img src="../images/WWI-eCommerce/dma-8.png">
</kbd></p>

<p><kbd>
   <img src="../images/WWI-eCommerce/dma-9.png">
</kbd></p>

<p><kbd>
   <img src="../images/WWI-eCommerce/dma-10.png">
</kbd></p>

8. Log in to the azure console, go to **azure migrate** and click on **databases**.

<p><kbd>
   <img src="../images/WWI-eCommerce/dma-11.png">
</kbd></p>

9. Click on **assessed database instances** to find the assessed database list.

<p><kbd>
  <img src="../images/WWI-eCommerce/dma-12.png">
</kbd></p>

10. Click on assessed database to view the assessment details.

<p><kbd>
   <img src="../images/WWI-eCommerce/dma-13.png">
</kbd></p>

> Congratulations! You are now ready with your Database Assessment. Please move for the [Migration](../migrate/wwi-ecomm-db.md) of the same.
