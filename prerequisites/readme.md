# Setup source infrastructure on vCenter
**Prerequisites**
* Server on vCenter for template creation.
    > Note: Create required server if it does not exist on vCenter by clicking on following name of the server.
    * [Windows Server 2016](../prerequisites/os/windows-template-creation.md)
    * [Windows Server 2008 R2](../prerequisites/os/windows2008R2-template-creation.md)

* Template for the server (linux, windows) where you want to install your application. ([Steps to create template](https://docs.vmware.com/en/VMware-vSphere/6.7/com.vmware.vsphere.vm_admin.doc/GUID-FE6DE4DF-FAD0-4BB0-A1FD-AFE9A40F4BFE.html)).


* [Install terraform](https://learn.hashicorp.com/terraform/getting-started/install.html) on server, from where you can access to your vCenter.
* After installing terraform, click on following server for terraform operation.
    * [linux server](../terraform-scripts/linux/)
    * [windows server](../terraform-scripts/windows/)
