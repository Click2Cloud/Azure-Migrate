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
  <img src="../images/prerequisites/Appliance-setup/pic01.png">
</kbd></p>

>- Observe ‘Prerequisites Set up’.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic02.png">
</kbd></p>

>- Observe the message.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic1.png">
</kbd></p>

>- Now we will generate the key required to register the appliance.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic2.png">
</kbd></p>

>- Select ‘Physical or other’ from the drop down.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic3.png">
</kbd></p>

>- Type name of appliance and click ‘Generate key’ then copy Azure Migrate project key.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic4.png">
</kbd></p>

>- Paste the Azure Migrate project key copied from previous step and Click ‘Login’.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic5.png">
</kbd></p>

>- Observe Status.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic10.png">
</kbd></p>

>- Click Add credentials.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic11.png">
</kbd></p>

>- Add credentials and click on save.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic13.png">
</kbd></p>

8. Enter the IPs with created friendly name credentials name for Server Discovery. 

>- Click Add discovery source.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic14.png">
</kbd></p>

>- Select Add multiple items and type comma separated Server Private IP and created friendly name credentials.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic15.png">
</kbd></p>

>- Observe Status.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic16.png">
</kbd></p>

9. Click **Start Discovery** and you can view the discovered virtual machines on the Azure Portal after the appliance is configured and discovery is done.
  
>- Click Start discovery.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic17.png">
</kbd></p>

>- Observe the ‘Status’.

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic18.png">
</kbd></p>

<p><kbd>
  <img src="../images/prerequisites/Appliance-setup/pic19.png">
</kbd></p>