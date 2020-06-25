# PartsUnlimited Application Assessment
* WWI has its own E-Commerce Platform where they sell WWI Brand Merchandise
* This WWI infrastructure is on on-premise
* WWI wants to migrate their workload on Azure cloud.

The application that will be migrated is hosted on a Windows server 2016 running Internet Information Services (IIS)

Technologies used:
 - .NET Core v2.2.104


## Steps for Application Discovery

App discovery using Azure Migrate: Server Assessment is agentless. Nothing is installed on machines and VMs. Server Assessment uses the Azure Migrate appliance to perform discovery along with machine guest credentials. The appliance remotely accesses the VMware machines using VMware APIs.

1. Log in to the azure console, Serach for **Azure Migrate** and click on **Azure Migrate**.

<p><kbd>
  <img src="../images/partsunlimited/manu-db-assessment-1.png">
</kbd></p>

2. Using Azure Migrate you can Migrate your on-premise datacenter to Azure. Click on **Servers** tab for server Assessment and Migration.

<p><kbd>
  <img src="../images/partsunlimited/manu-db-assessment-2.png">
</kbd></p>

3. For Assessment In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Discovered servers**.

Here you can see all the discovered servers from your on-premise data center **vCenter** which Azure appliance has discovered.

<p><kbd>
  <img src="../images/partsunlimited/sa-1.png">
</kbd></p>

<p><kbd>
  <img src="../images/partsunlimited/manu-db-assessment-3.png">
</kbd></p>

4. In **Applications discovered**, click the displayed count.
* In **Application inventory**, you can review the discovered apps, roles, and features.

* Application Discovery for PartsUnlimited Application VM.
<p><kbd>
  <img src="../images/partsunlimited/manu-db-assessment-4.png">
</kbd></p>

<p><kbd>
  <img src="../images/partsunlimited/application-discovery-application.png">
</kbd></p>

## Steps for Application Dependency and Grouping

1. In the **Dependencies** column, click **View dependencies** for each machine you want to review.
2. After you've identified the dependent machines on the dependency map that you want to group together, use Ctrl+Click to select multiple machines on the map, and click Group machines.

* Application dependency for Windows VM (Application hosted on IIS - PartsUnlimited)

<p><kbd>
  <img src="../images/partsunlimited/application-dependency-application.png">
</kbd></p>

## Steps for Azure Readiness and Total Cost of Ownership

1. In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Assess servers**.

<p><kbd>
  <img src="../images/partsunlimited/sa-1.png">
</kbd></p>

2. In **Assess servers**, specify a name for the assessment. In **Select or create a group**, select **Use Existing**, and select a group created above. Click on **Create Assessment**.

<p><kbd>
  <img src="../images/partsunlimited/sa-2.png">
</kbd></p>

3. After the assessment is created, view it in **Servers** > **Azure Migrate: Server Assessment** > **Assessments**.

<p><kbd>
  <img src="../images/partsunlimited/sa-3.png">
</kbd></p>

4. You will be redirected to **Assessment Overview**.

<p><kbd>
  <img src="../images/partsunlimited/sa-4.png">
</kbd></p>

5. Click on **Azure Readiness**.
Azure readiness show whether VMs are suitable for migration to Azure.

<p><kbd>
  <img src="../images/partsunlimited/sa-5.png">
</kbd></p>

6. Click on **Cost Details**.
It shows the estimated monthly compute and storage costs for running the VMs in Azure and Estimated costs for disk storage after migration.

<p><kbd>
  <img src="../images/partsunlimited/sa-6.png">
</kbd></p>

7. Click on Servers it will show you Migration tool suggestion and Reason why to use suggested tool.

<p><kbd>
  <img src="../images/partsunlimited/sa-7-app.png">
</kbd></p>

## Steps for WebApp Assessment using Azure App Service Migration Assistant

The App Service Migration Assistant is designed to simplify your journey to the cloud through a free, simple, and fast solution to migrate .Net applications from on-premises to the cloud.

1. [Download](https://appmigration.microsoft.com/readiness) and open the Azure App Service Migration Assistant. Select the app for assessment and start the assessment.

<kbd>
  <img src="../images/partsunlimited/app-assessment-1.png">
</kbd></p>

2. Select the partsunilimited site and click Next, the site will be assessed for compatibility with Azure App Services.

<kbd>
  <img src="../images/partsunlimited/app-assessment-2.png">
</kbd></p>

# PartsUnlimited Application Migration using Azure App Service Migration Assistant

1. Before you start the migration process, you need to login to Azure account with a subscription. Click on **Copy Code & Open Browser**

<kbd>
  <img src="../images/partsunlimited/app-assessment-3.png">
</kbd></p>

<kbd>
  <img src="../images/partsunlimited/app-assessment-4.png">
</kbd></p>

2. Azure will create the required Azure resources for you to create and migrate your contents to a new app. Before we can do that we need some information. Please fill all the information and Click on **Migrate**.

<kbd>
  <img src="../images/partsunlimited/app-assessment-9.png">
</kbd></p>

3. Please wait while migration is in progress. This may take few minutes. Once the migration is Complete, we will take you to the next step.

<kbd>
  <img src="../images/partsunlimited/app-assessment-10.png">
</kbd></p>

4. Congratulations, your site has been successfully migrated! Click on **Go to your website**

<kbd>
  <img src="../images/partsunlimited/app-assessment-11.png">
</kbd></p>