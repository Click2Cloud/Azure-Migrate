# NerdDinner Application Assessment
## Purpose of this application:
NerdDinner provides an easy way for people to find and organize dinners online. NerdDinner enables registered users to create, edit and delete dinners. It enforces a consistent set of validation and business rules across the application

## Technologies used:
- .NET 4
- SQL 2008 R2

## **Application Discovery**
App discovery using Azure Migrate: Server Assessment is agentless. Nothing is installed on machines and VMs. Server Assessment uses the Azure Migrate appliance to perform discovery along with machine guest credentials. The appliance remotely accesses the VMware machines using VMware APIs.

1. In **Azure Migrate - Servers > Azure Migrate: Server Assessment**, click the displayed count to open the **Discovered servers** page.
2. In **Applications discovered**, click the displayed count.
3. In **Application inventory**, you can review the discovered apps, roles, and features.

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/application-discovery-sql.PNG?raw=true">
</kbd></p>

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/application-discovery1.PNG?raw=true">
</kbd></p>

<p><kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/application-discovery3.PNG?raw=true">
</kbd></p>

## Application Dependency and Grouping

1. In **Azure Migrate: Server Assessment**, click **Discovered servers**.
2. In the **Dependencies** column, click **View dependencies** for each machine you want to review.
3. After you've identified the dependent machines on the dependency map that you want to group together, use Ctrl+Click to select multiple machines on the map, and click Group machines.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/application-dependency.PNG?raw=true">
</kbd></p>

## Steps for server Assessment:

1. In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Assess**.
    - Azure Migrate Dashboard for Server Assessment which includes:
        - Discovered Servers
        - Groups
        - Assessments
        - Notifications

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/tailwind-traders-petstore/assessment.PNG?raw=true">
</kbd></p>

2. In **Assess servers**, specify a name for the assessment. In **Select or create a group**, select **Create New**, and select a group created above. Click on **Create Assessment**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/server-assessment-1.PNG?raw=true">
</kbd></p>

3. After the assessment is created, view it in **Servers** > **Azure Migrate: Server Assessment** > **Assessments**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/server-assessment-2.PNG?raw=true">
</kbd></p>

4. You will be redirected to **Assessment Overview**.
    - Overview includes:
        - Azure Readiness
        - Monthly Cost Estimate
        - Storage Monthly Cost Estimate

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/server-assessment-3.PNG?raw=true">
</kbd></p>

5. Click on **Azure Readiness**.
Azure readiness show whether VMs are suitable for migration to Azure.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/server-assessment-4.PNG?raw=true">
</kbd></p>

6. Click on **Cost Details**.
It shows the estimated monthly compute and storage costs for running the VMs in Azure and Estimated costs for disk storage after migration.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/server-assessment-5.PNG?raw=true">
</kbd></p>

7. Click on Servers it will show you Migration tool suggestion and Reason why to use suggested tool.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/server-assessment-6.PNG?raw=true">
</kbd></p>

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/nerd-dinner/server-assessment-7.PNG?raw=true">
</kbd></p>