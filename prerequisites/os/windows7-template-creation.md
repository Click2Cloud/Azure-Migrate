# Steps for Windows 7 Template Creation

1. Download Windows 7 ISO from [here](https://ia803107.us.archive.org/25/items/en_windows_7_enterprise_dvd/en_windows_7_enterprise_x64_dvd.iso)

2. Upload it to your VMware vCenter.

    **Procedure**  
    1. Click **Storage** in the VMware Host Client inventory and click **Datastores**.  
    
    <p><kbd>
        <img src="../../images/prerequisites/vsphere-client-inventory-storage.png">
    </kbd></p>
    
    2. Click **Datastore browser**.  
    
    <p><kbd>
        <img src="../../images/prerequisites/datastore-browser1.PNG">
    </kbd></p>
    
    3. Select the datastore that you want to store the file on.  
    4. **(Optional)** Click **New Folder** to create a new datastore directory to store the file.  
    5. Select the target folder and click **Upload Files**.  
    6. Locate the item that you want to upload from your local computer and click **Open**.  
    7. The file uploads to the datastore that you selected.  
    8. **(Optional)** Refresh the datastore file   browser to see the uploaded file on the list.

3. Create VM using the uploaded ISO file.

    **Procedure**  
    1. Click **VMs and Templates** in the VMware Host Client inventory, click **Actions** and select **New Virtual Machine**.  
    
    <p><kbd>
        <img src="../../images/prerequisites/vsphere-client-inventory-vm.png">
    </kbd></p>
    
    <p><kbd>
        <img src="../../images/prerequisites/vm-creation1.PNG">
    </kbd></p>
    
    2. On the Select a creation type page, select **Create a new virtual machine** and click **Next**.  
    
    <p><kbd>
        <img src="../../images/prerequisites/vm-creation2.PNG">
    </kbd></p>
    
    3. On the Select a name and folder page, enter a unique name for the virtual machine and select a deployment location.     
    4. On the Select a compute resource page, select the host, cluster, resource pool, or vApp where the virtual machine will run and click **Next**.  
    
    <p><kbd>
        <img src="../../images/prerequisites/vm-creation3.PNG">
    </kbd></p>
    
    5. On the Select storage page, choose the storage type, the storage policy, and a datastore or datastore cluster where you have uploaded ISO file in Step 2. 
    <p><kbd>
        <img src="../../images/prerequisites/vm-creation4.PNG">
    </kbd></p> 
    
    6. On the Select compatibility page, select the virtual machine compatibility with ESXi host versions and click **Next**.  
         
    7. On the Select a guest OS page, select the guest OS family as *Windows* and version as *Microsoft Windows Server 2016 (64-bit)* and click **Next**.  
    
    <p><kbd>
        <img src="../../images/prerequisites/vm-creation5-windows2016.PNG">
    </kbd></p> 
    
    8. On the Customize hardware page, configure the virtual machine hardware and options, in *New CD/DVD Drive* option select option for *Datastore ISO File* and choose the ISO file uploaded in Step 2 and click **Next**.  
    
    <p><kbd>
        <img src="../../images/prerequisites/vm-creation6.PNG">
    </kbd></p> 
    
    9. On the Ready to complete page, review the details and click **Finish**.  
    
    <p><kbd>
        <img src="../../images/prerequisites/vm-creation7.PNG">
    </kbd></p> 
    
    10. The virtual machine appears in the vSphere Client inventory.  
    
4. After the virtual machine is created, you will have to install Windows 7 OS on it.  
    **Installation Steps**
    1. At the first screen, click **Install Now**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/1.png">
    </kbd></p>
    
    2. Accept the license terms and click on **Next**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/2.png">
    </kbd></p>
    
    3. Provided that it is a new installation, choose **Custom: Install Windows**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/3.png">
    </kbd></p>
    
    4. Then select the disk to install the OS and click **Next**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/4.png">
    </kbd></p>
    
    5. The setup process will now begin to copy files from the installation DVD media to the hard disk.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/5.png">
    </kbd></p>
    
    6. The computer will reboot, and the next thing you’ll see is the prompt to set the user’s and computer’s name. By default, the computer’s name will be username-PC, where username is the username you’ve entered. Click on **Next**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/6.png">
    </kbd></p>
    
    7. Enter the password and click **Next**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/7.png">
    </kbd></p>
    
    8. Choose your time zone and location and click on **Next**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/10.png">
    </kbd></p>
    
    9. Select your network location type. This setting can be changed later, but do note that choosing a profile will have effect on the Windows Firewall and sharing settings. Click on **Next**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/11.png">
    </kbd></p>
    
    10. Windows will finalize the settings and your desktop will appear.
    
        <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/12.png">
    </kbd></p>
    
    11. After you have finished installing the operating system and logged in with a Windows Administrator account, open the VM menu and click Install VMware Tools.  
    
    <p><kbd>
        <img src="../../images/prerequisites/windows2016-os-installation/tools1.png">
    </kbd></p>
    
    You will then see that the virtual DVD of VMware Tools has been loaded into VMs DVD drive. Tap on the message that will appear to continue. Alternatively, if the message is gone, open File Explorer, enter the contents of the DVD and run Setup.exe.
    
    Run setup64.exe to start the process.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows2016-os-installation/tools2.png">
    </kbd></p>
    
    Click **Next** to continue.
    
    In a typical installation of a VM, select Typical and then Next to continue. For more advanced customization, select Complete or Custom.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows2016-os-installation/tools3.png">
    </kbd></p>
    
    Click the Install button to continue.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows2016-os-installation/tools4.png">
    </kbd></p>
    
    The VMware Tools installation process is in progress. Wait for it to finish.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows2016-os-installation/tools5.png">
    </kbd></p>
    
    Finally, click **Finish** to finish the process.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows2016-os-installation/tools6.png">
    </kbd></p>
    
    VMware Tools will need to restart the VM in order to fully complete the installation of VMware Tools. Click Yes to continue.
    
    12. Open PowerShell and paste the following commands:
    - winrm set winrm/config/service '@{AllowUnencrypted="true"}'
    - winrm set winrm/config/service/auth '@{Basic="true"}'
    
    13. Follow the steps to enable Administrator account.
    
    a) Open Local Users and Groups. You can do so by typing lusrmgr.msc in the Start search box or in the Run command and pressing ENTER. Or, you could open Computer Management by right-clicking Computer in the Start menu and selecting Manage.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/13.png">
    </kbd></p>
    
    b) Expand **System Tools** > **Local  Users and Groups** > **Users**.  
        Right-click the Administrator account and select **Set Password**.
        
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/14.png">
    </kbd></p>
    
    c) In the **Set Password for Administrator** click **Proceed**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/15.png">
    </kbd></p>
    
    d) In the **Set Password for Administrator** enter the Administrator’s desired password, and click **OK**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/16.png">
    </kbd></p>
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/17.png">
    </kbd></p>
    
    e) Next, enable the Administrator’s account. Right-click the Administrator’s account and select **Properties**.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/18.png">
    </kbd></p>
    
    f) Un-check the **Account is disabled** check-box. Click on the **OK** button.
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/19.png">
    </kbd></p>
    
    14. Open the Windows Explorer and access the folder:  C:\Windows\System32\Sysprep 
    Run **sysprep.exe**
    
    <p><kbd>
        <img src="../../images/prerequisites/windows7-os-installation/sysprep1.jpg">
    </kbd></p>
     
    On the Sysprep application screen, perform the following configuration:
        - System Cleanup Action - Enter System Out-of-Box Experience (OOBE)
        - Generalize - Yes
        - Shutdown Options - Shutdown
    
    <p><kbd>
        <img src="../../images/prerequisites/windows2016-os-installation/sysprep2.jpg">
    </kbd></p>
    
    15. Power On the VM, select Language and set password.
        
5. Create a template using the VM.

    **Procedure**  
    1. Click **VMs and Templates** in the VMware Host Client inventory. 
    
    <p><kbd>
        <img src="../../images/prerequisites/vsphere-client-inventory-vm.png">
    </kbd></p>
     
    2. Right click on the VM created in Step 4 and select **Clone > Clone to Template**.
    
    <p><kbd>
        <img src="../../images/prerequisites/template1.PNG">
    </kbd></p>
    
    3. On the Select a name and folder page, enter a name for the template and select a data center or a folder in which to deploy it.
    
    <p><kbd>
        <img src="../../images/prerequisites/template2.PNG">
    </kbd></p>
    
    4. On the Select a compute resource, select a host or a cluster resource for the template.
    
    <p><kbd>
        <img src="../../images/prerequisites/template3.PNG">
    </kbd></p>
    
    5. On the Select storage page, select the datastore or datastore cluster in which to store the virtual machine configuration files and all of the virtual disks. Click Next.
    
    6. On the Ready to complete page, review the template settings and click **Finish**.  
    
     <p><kbd>
        <img src="../../images/prerequisites/template4.PNG">
    </kbd></p>
    
    The progress of the clone task appears in the Recent Tasks pane. When the task completes, the template appears in the inventory.