# Steps for Ubuntu 16.04 Template Creation

1. Download Ubuntu 16.04 ISO from [here](https://releases.ubuntu.com/16.04/ubuntu-16.04.6-desktop-amd64.iso)

2. Upload it to your VMware vCenter.

    **Procedure**  
    1. Click **Storage** in the VMware Host Client inventory and click **Datastores**.  
    <p><kbd>
        <img src="../images/prerequisites/vsphere-client-inventory-storage.png">
    </kbd></p>
    2. Click **Datastore browser**.  
    <p><kbd>
        <img src="../images/prerequisites/datastore-browser1.PNG">
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
        <img src="../images/prerequisites/vsphere-client-inventory-vm.png">
    </kbd></p>
    <p><kbd>
        <img src="../images/prerequisites/vm-creation1.png">
    </kbd></p>
    2. On the Select a creation type page, select **Create a new virtual machine** and click **Next**.  
    <p><kbd>
        <img src="../images/prerequisites/vm-creation2.png">
    </kbd></p>
    3. On the Select a name and folder page, enter a unique name for the virtual machine and select a deployment location. 
    4. On the Select a compute resource page, select the host, cluster, resource pool, or vApp where the virtual machine will run and click **Next**.  
    <p><kbd>
        <img src="../images/prerequisites/vm-creation3.png">
    </kbd></p>
    5. On the Select storage page, choose the storage type, the storage policy, and a datastore or datastore cluster where you have uploaded ISO file in Step 2. 
    <p><kbd>
        <img src="../images/prerequisites/vm-creation4.png">
    </kbd></p> 
    6. On the Select compatibility page, select the virtual machine compatibility with ESXi host versions and click **Next**.  
    <p><kbd>
        <img src="../images/prerequisites/vm-creation5.png">
    </kbd></p>  
    7. On the Select a guest OS page, select the guest OS family as *Linux* and version as *Ubuntu Linux (64-bit)* and click **Next**.  
    <p><kbd>
        <img src="../images/prerequisites/vm-creation6.png">
    </kbd></p> 
    8. On the Customize hardware page, configure the virtual machine hardware and options, in *New CD/DVD Drive* option select option for *Datastore ISO File* and choose the ISO file uploaded in Step 2 and click **Next**.  
    <p><kbd>
        <img src="../images/prerequisites/vm-creation7.png">
    </kbd></p> 
    9. On the Ready to complete page, review the details and click **Finish**.  
    10. The virtual machine appears in the vSphere Client inventory.  
    
4. After the virtual machine is created, you will have to install Ubuntu Linux Server 16.04 OS on it.  
    **Installation Steps**
    1. You will see the following language selection screen appear. Using the keyboard **Arrow** keys, select the language you would like to use and press **Enter**. For this demo we will be using the default, **English**.
    2. Next you will be asked to select an action.  
    Since we are installing Linux we will choose the default Install Ubuntu Server by pressing **Enter**.
    3. Now that we have begun the installation process, the installer will ask for the language that you would like the system to use during installation and operation.  
    Use the keyboard **Arrow** keys to make your selection and press **Enter**. We will be using the default, **English** in this demo.
    4. Once the system language has been selected you will be asked to select the location the system will use. This setting is used for configuring the locality of several system services.  
    We will accept the default, United States by pressing **Enter**.
    5. The installer will now ask whether or not it should try to detect your keyboard layout. You can select **<Yes>** to allow the system to detect the keyboard layout. If it is successful you will automatically skip to step 8.  
    If the detection is not successful you will need to complete the manual selection process in steps 6 and 7 as if you had selected **<No>**.  
    In this tutorial we will select **<No>** to allow us to manually select our keyboard layout. Pressing the **Tab** key will allow you to move between selections.
    6. The first step in selecting your keyboard's layout is to choose the Country of Origin for the keyboard.  
    We will choose **English (US)** which is the default.
    7. Next you will be asked to select the specific layout within the Country of Origin of your keyboard.  
    We will again choose **English (US)** which is the default.
    8. Your system will now try to automatically configure your network options. If it is unable to do this you will be presented with the following failure message:  
    To continue to the network configuration step press the **Enter** key.
    9. To configure your network settings you will be presented with four options.  
    The first two options allow you to retry the auto-configuration process. These options are useful if you are able to correct the reason your network was not able to be configured automatically and you wish to retry the automatic configuration.  
    You can also choose to skip configuring the network by selecting **Do not configure the network at this time**. If you choose to skip configuring the network, you will need to manually configure your network settings after installation completes before your system will be able to communicate with other servers on your network.  
    For our demo we will select **Configure network manually**.  
    After you have made your selection press the **Enter** key to continue.
    10. Now that we have selected Configure network manually we will be asked to enter the Internet Protocol (IP) address for our system. If you do not know your IP address please consult your network administrator for the information.  
    In this example we will use the IP address **1.2.3.4**
    In the field provided, enter the IP address of **1.2.3.4**. When done, press the **Tab** key until you get to **<Continue>** and then press the **Enter** key.
    11. You will next be prompted to enter the network mask for your network. Again, if you do not know your network mask please consult your network administrator for the information.  
    In our demo we will use the default **255.255.255.0** as our network mask.  
    Since we are accepting the default network mask of **255.255.255.0** simply press the **Tab** key until you get to **<Continue>** and then press the **Enter** key.
    12. In this step we will enter the IP address of the network gateway for our network. Your network administrator can provide this information to you if you do not know what it is.  
    In our demo we will use the address **1.2.3.1** as our gateway address.  
    In the field provided, enter the IP address of **1.2.3.1** for the gateway address. When done, press the Tab key until you get to **<Continue>** and then press the **Enter** key.
    13. In this step we will enter the IP address of the primary name server for our network. Your network administrator can provide this information to you if you do not know what it is.  
    In our demo we will use the address **8.8.8.8** as our name server address.  
    In the field provided, enter the IP address of **8.8.8.8** for the name server address. When done, press the **Tab** key until you get to **<Continue>** and then press the **Enter** key.
    14. Next you will be asked to enter the name that this host will be known as. This name can be a single word (no spaces) and should not contain special characters such as "%".
    15. In this step, you will be asked to enter the full name of the primary user of the system.  
    On our system we will set this user name to **TechOnTheNet** . Press the **Tab** key until you get to **<Continue>** and then press the **Enter** key.
    16. Next, we will enter the user name we will use to log in. This name should be lowercase and not include spaces or non-alphanumeric characters.  
    In our demo we will use **techonthenet** for our user account. Press the **Tab** key until you get to **<Continue>** and then press the **Enter** key.
    17. On this screen, you will need to enter the password you would like to use for the **techonthenet** user account.  
    After entering the password, press the **Tab** key until you get to **<Continue>** and then press the **Enter** key.
    18. In this step, you will be asked to re-enter the password you used from the previous step. This is to ensure that the passwords match.  
    After re-entering the password, press the **Tab** key until you get to **<Continue>** and then press the **Enter** key.
    19. Ubuntu allows you to encrypt your home directories for security. This is useful for situations where users require security on items they keep in their home directories.  
    For this tutorial, we will select **<No>** and not encrypt the home directories.
    20. In this step, you will configure the clock and choose the time zone your computer will use. The system time services will use this setting to display the correct local time.
    21. Ubuntu will now ask you to configure your hard disk partitions. There are several choices available.For this demo we will choose the second option which is **Guided - use entire disk and set up LVM**.
    22. Next we will need to select the hard disk that we will apply the hard drive partitions to. 
    23. The installer will now confirm that you are prepared to write the partition layout to the hard disk you have selected.  
    If you are ready to apply your selected partition layout to the hard disk, tab to **<Yes>** and then press the **Enter** key.
    24. Enter the amount of hard disk space to use for Ubuntu Linux Server.
    25. The installer will confirm that you are ready to write the partition information to the hard disk.  
    Since these settings are correct and we are ready to write the partition information we will select **<Yes>** to continue.
    26. If you utilize a HTTP proxy on your network, you can enter the proxy information on this screen.  
    In this demo we will not provide any HTTP proxy information so we press the **Tab** key until we get to **<Continue>** and then press the **Enter** key.
    27. Next, the installer will ask if you would like to configure automatic system updates. We will select **Install security updates automatically** for this demo.
    28. At this step we will be asked to select any additional software or services we would like to install on the host. By default the standard system utilities option is selected. This option contains many of the system utilities that we will need to manage our system so we will leave it selected.  
    Since we would like to be able to log into the host using secure shell (SSH) from another host on the network we will also select OpenSSH server.  
    You can select a menu option by pressing the **Space Bar**. Moving between menu items can be accomplished by using your keyboard's Arrow keys.  
    When you are finished selecting the software, select **<Continue>**.
    29. The system will now ask to install the GRUB boot loader onto the master boot record of your hard disk.GRUB is used during the boot up process to enable Ubuntu Linux Server to load.  
    We will select **<Yes>** to install the GRUB boot loader.
    30. The installation is complete!  
    The installer will now prompt you to reboot the computer.  
    Select **<Continue>** to reboot into Ubuntu Linux Server.
    31. If all goes well in a few minutes you will see a login prompt similar to the following screenshot.  
    You can now log in using the user name and password you configured during steps 10, 11 and 12.
    32. Enable root user login using following steps: 
        1. Set password for root user using command **sudo passwd root** 
        2. Open file using **sudo nano /etc/ssh/sshd_config**
        2. Change PermitRootLogin prohibit-password to PermitRootLogin yes 
        3. Restart ssh service using **sudo service ssh restart**
        
5. Create a template using the VM.

    **Procedure**  
    1. Click **VMs and Templates** in the VMware Host Client inventory.  
    2. Right click on the VM created in Step 4 and select **Clone > Clone to Template**.
    3. On the Select a name and folder page, enter a name for the template and select a data center or a folder in which to deploy it.
    4. On the Select a compute resource, select a host or a cluster resource for the template.
    5. On the Select storage page, select the datastore or datastore cluster in which to store the virtual machine configuration files and all of the virtual disks. Click Next.
    6. On the Ready to complete page, review the template settings and click **Finish**.  
    The progress of the clone task appears in the Recent Tasks pane. When the task completes, the template appears in the inventory.
