# Java PetStore Application Assessment
## Purpose of this application:
Do you remember the good old Java Petstore ? It was a sample application created by Sun for its Java BluePrints program. The Java Petstore was designed to illustrate how J2EE (and then Java EE) could be used to develop an eCommerce web application. Yes, the point of the Petstore is to sell pets online. The idea was to build an application with a certain technology.

## Technologies used:
- **Technologies** : Java EE 7, Java SE 7 (because that's the minimum required by Java EE 7), Twitter Bootstrap (Bootstrap 3.x, JQuery 2.x, PrimeFaces 6.x)
- **Application Servers** : WildFly 10, WildFly 11
- **Database** : MySQL v5.7.3
- **Summary** : A Petstore-like application using Java EE 7

## **Application Discovery**
App discovery using Azure Migrate: Server Assessment is agentless. Nothing is installed on machines and VMs. Server Assessment uses the Azure Migrate appliance to perform discovery along with machine guest credentials. The appliance remotely accesses the VMware machines using VMware APIs.

1. In **Azure Migrate - Servers > Azure Migrate: Server Assessment**, click the displayed count to open the **Discovered servers** page.
2. In **Applications discovered**, click the displayed count.
3. In **Application inventory**, you can review the discovered apps, roles, and features.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/application-discovery.png?raw=true">
</kbd></p>

## Application Dependency and Grouping

1. In **Azure Migrate: Server Assessment**, click **Discovered servers**.
2. In the **Dependencies** column, click **View dependencies** for each machine you want to review.
3. After you've identified the dependent machines on the dependency map that you want to group together, use Ctrl+Click to select multiple machines on the map, and click Group machines.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/application-dependency.png?raw=true">
</kbd></p>

## Steps for server Assessment:

1. In the **Servers** tab, in **Azure Migrate: Server Assessment** tile, click **Assess**.
    - Azure Migrate Dashboard for Server Assessment which includes:
        - Discovered Servers
        - Groups
        - Assessments
        - Notifications

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-1.png?raw=true">
</kbd></p>

2. In **Assess servers**, specify a name for the assessment. In **Select or create a group**, select **Use Existing**, and select a group created above. Click on **Create Assessment**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-2.png?raw=true">
</kbd></p>

3. After the assessment is created, view it in **Servers** > **Azure Migrate: Server Assessment** > **Assessments**.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-3.png?raw=true">
</kbd></p>

4. You will be redirected to **Assessment Overview**.
    - Overview includes:
        - Azure Readiness
        - Monthly Cost Estimate
        - Storage Monthly Cost Estimate

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-4.png?raw=true">
</kbd></p>

5. Click on **Azure Readiness**.
Azure readiness show whether VMs are suitable for migration to Azure.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-5.png?raw=true">
</kbd></p>

6. Click on **Cost Details**.
It shows the estimated monthly compute and storage costs for running the VMs in Azure and Estimated costs for disk storage after migration.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-6.png?raw=true">
</kbd></p>

7. Click on Servers it will show you Migration tool suggestion and Reason why to use suggested tool.

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-7.png?raw=true">
</kbd></p>

<kbd>
  <img src="https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-8.png?raw=true">
</kbd></p>