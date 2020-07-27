# Wide World Importers legacy Database Migration
* WWI has its own e-Commerce Platform where they sell WWI Brand Merchandise.
* This WWI is on on-premise infrastructure.
* WWI wants to migrate their workload on Azure cloud.

The database that will be migrated is hosted on a Windows Server 2008 R2.

Technologies used:
 - Microsoft SQL Server 2008 R2
 
## Download and install the provider

For migrating Hyper-V VMs, Azure Migrate:Server Migration installs software providers (Microsoft Azure Site Recovery provider and Microsoft Azure Recovery Service agent) on Hyper-V Hosts or cluster nodes. Note that the Azure Migrate appliance isn't used for Hyper-V migration.  

1. In the Azure Migrate project > **Servers**, in A**zure Migrate: Server Migration**, click **Discover**.

2. In **Discover machines** > **Are your machines virtualized?**, select **Yes, with Hyper-V**.

3. In **Target region**, select the Azure region to which you want to migrate the machines.

4. Select **Confirm that the target region for migration is region-name**.

5. Click **Create resources**. This creates an Azure Site Recovery vault in the background.
  - If you've already set up migration with Azure Migrate Server Migration, this option won't appear since resources were set up previously.
  - You can't change the target region for this project after clicking this button.
  - All subsequent migrations are to this region.
  
<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration1-hyperv.PNG">
</kbd></p>

6. In **Prepare Hyper-V host servers**, download the Hyper-V Replication provider, and the registration key file.
  - The registration key is needed to register the Hyper-V host with Azure Migrate Server Migration.
  - The key is valid for five days after you generate it.
  
<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration2-hyperv.PNG">
</kbd></p>

7. Copy the provider setup file and registration key file to each Hyper-V host (or cluster node) running VMs you want to replicate.

8. Run the provider setup file on each host, as described in the next procedure.

9. After installing the provider on hosts, in **Discover machines**, click **Finalize registration**. 

It can take up to 15 minutes after finalizing registration until discovered VMs appear in Azure Migrate Server Migration. As VMs are discovered, the **Discovered servers** count rises.

## Replicate VMs

With discovery completed, you can begin replication of Hyper-V VMs to Azure.
* You can run up to 300 replications simultaneously.
* In the portal, you can select up to 10 VMs at once for migration. To migrate more machines, add them to groups in batches of 10.

Enable replication as follows:
1. In the Azure Migrate project > **Servers, Azure Migrate: Server Migration**, click **Replicate**.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration1.PNG">
</kbd></p>

2. In **Replicate**, > **Source settings** > **Are your machines virtualized?**, select **Yes, with Hyper-V**.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration4-hyperv.PNG">
</kbd></p>

3. In **Virtual machines**, select the machines you want to replicate. To apply VM sizing and disk type from an assessment if you have run one, in **Import migration settings from an Azure Migrate assessment?**, select **Yes**, and select the VM group and assessment name. If you aren't using assessment settings, select **No**.

4. In **Virtual machines**, select VMs you want to migrate. Then click **Next: Target settings**.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration4.PNG">
</kbd></p>

5. In **Target settings**, select the subscription and target region. Specify the resource group in which the Azure VMs reside after migration.

6. In **Virtual Network**, select the Azure VNet/subnet which the Azure VMs join after migration.

7. In **Azure Hybrid Benefit**:
- Select **No** if you don't want to apply Azure Hybrid Benefit. Then click **Next**.
- Select **Yes** if you have Windows Server machines that are covered with active Software Assurance or Windows Server subscriptions, and you want to apply the benefit to the machines you are migrating. Then click **Next**.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration5.PNG">
</kbd></p>

8. In **Compute**, review the VM name, size, OS disk type, and availability set. VMs must conform with Azure requirements.
- **VM size**: If you're using assessment recommendations, the VM size dropdown shows the recommended size. Otherwise Azure Migrate picks a size based on the closest match in the Azure subscription. Alternatively, pick a manual size in Azure VM size.
- **OS disk**: Specify the OS (boot) disk for the VM. The OS disk is the disk that has the operating system bootloader and installer.
- **Availability set**: If the VM will reside in an Azure availability set after migration, specify the set. The set must be in the target resource group you specify for the migration.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration6.PNG">
</kbd></p>

9. In **Disks**, specify whether the VM disks should be replicated to Azure, and select the disk type (standard SSD/HDD or premium-managed disks) in Azure. Then click **Next**.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration7.PNG">
</kbd></p>

10. In **Review and start replication**, review the settings, and click **Replicate** to start the initial replication for the servers.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration8.PNG">
</kbd></p>

## Track and Monitor

1. Track job status in the portal notifications.
2. Monitor replication status by clicking on **Replicating servers** in **Azure Migrate: Server Migration**.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration9.PNG">
</kbd></p>

3. Replication occurs as follows:
- When the Start Replication job finishes successfully, the machines begin their initial replication to Azure.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration-initial-replication.PNG">
</kbd></p>

- During initial replication, a VM snapshot is created. Disk data from the snapshot is replicated to replica managed disks in Azure.
- After initial replication finishes, delta replication begins. Incremental changes to on-premise disks are periodically replicated to the replica disks in Azure.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration-delta-sync.PNG">
</kbd></p>

## Run a test migration

When delta replication begins, you can run a test migration for the VMs, before running a full migration to Azure.
- Running a test migration checks that migration will work as expected, without impacting the on-premises machines, which remain operational, and continue replicating.
- Test migration simulates the migration by creating an Azure VM using replicated data (usually migrating to a non-production VNet in your Azure subscription).
- You can use the replicated test Azure VM to validate the migration, perform app testing, and address any issues before full migration.

Do a test migration as follows:
1. After the replication job finishes, click on **Test migration**.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration12.PNG">
</kbd></p>

2. In Test Migration, select the Azure VNet in which the Azure VM will be located after the migration.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration13.PNG">
</kbd></p>

3. The Test migration job starts. Monitor the job in the portal notifications.
4. After the migration finishes, view the migrated Azure VM in Virtual Machines in the Azure portal. The machine name has a suffix -Test.
5. After the test is done, right-click the Azure VM in Replicating machines, and click Clean up test migration.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration15.PNG">
</kbd></p>

## Migrate VMs
After you've verified that the test migration works as expected, you can migrate the on-premise machines.

1. In the Azure Migrate project > **Servers** > **Azure Migrate: Server Migration**, click **Replicating servers**.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration14.PNG">
</kbd></p>

2. In **Replicating machines**, right-click the VM > **Migrate**.
3. In **Migrate** > **Shut down virtual machines and perform a planned migration with no data loss**, select **Yes** > **OK**.
- By default Azure Migrate shuts down the on-premise VM, and runs an on-demand replication to synchronize any VM changes that occurred since the last replication occurred. This ensures no data loss.
- If you do not want to shut down the VM, select **No**

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration16.PNG">
</kbd></p>

4. A migration job starts for the VM. Track the job in Azure notifications.
5. After the job finishes, you can view and manage the VM from the **Virtual Machines** page.

## Complete the migration
1. After the migration is done, right-click the VM > **Stop Replication**. This stops replication for the on-premises machine, and cleans up replication state information for the VM.

<p><kbd>
  <img src="../images/WWI-eCommerce/server-migration17.PNG">
</kbd></p>

2. Perform any post-migration app tweaks, such as updating database connection strings, and web server configurations.
3. Perform final application and migration acceptance testing on the migrated application now running in Azure.
4. Cut over traffic to the migrated Azure VM instance.
5. Remove the on-premise VMs from your local VM inventory.
6. Remove the on-premise VMs from local backups.
7. Update any internal documentation to show the new location and IP address of the Azure VMs.

> Congratulations! You are now ready with your Database on Azure Cloud. 
