# Appliance Setup

1. Log in to the azure console, Search for **Azure Migrate** and click on **Azure Migrate**.

<p><kbd>
  <img src="../images/WWI-eCommerce/wwi-server-assessment-1.png">
</kbd></p>

2. Under **Discover**, **assess and migrate servers**, click **Assess and migrate servers**.

<p><kbd>
  <img src="../images/prerequisites/create-project1.PNG">
</kbd></p>

3. Click **Add tools**.

<p><kbd>
  <img src="../images/prerequisites/create-project2.PNG">
</kbd></p>

4. In **Migrate project**, select your Azure subscription, and create a resource group if you don't have one.  
In **Project Details**, specify the project name, and geography in which you want to create the project.

<p><kbd>
  <img src="../images/prerequisites/create-project3.PNG">
</kbd></p>

5. Click **Next**, and add an assessment or migration tool.

<p><kbd>
  <img src="../images/prerequisites/create-project4.PNG">
</kbd></p>
<p><kbd>
  <img src="../images/prerequisites/create-project5.PNG">
</kbd></p>

6. In **Review + add tools**, review the settings, and click **Add tools**.

<p><kbd>
  <img src="../images/prerequisites/create-project6.PNG">
</kbd></p>

7. Setup VM for Azure Appliance on Azure for assessment. Setup Credentials for Linux and Windows machine.
>- Appliance setup instructions can be found [here](https://docs.microsoft.com/en-us/azure/migrate/how-to-set-up-appliance-physical).

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/phy-app-1.png">
</kbd></p>

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/phy-app-2.png">
</kbd></p>

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/phy-app-3.png">
</kbd></p>

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/phy-app-4.png">
</kbd></p>

8. Enter the IPs with created friendly name credentials name for Server Discovery.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/phy-app-5.png">
</kbd></p>

9. Click **Save and Start Discovery**
<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/phy-app-6.png">
</kbd></p>

9. You can view the discovered virtual machines on the Azure Portal after the appliance is configured and discovery is done.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/phy-app-7.png">
</kbd></p>