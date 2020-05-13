# Java PetStore Assessment
## Purpose of this application:
Do you remember the good old Java Petstore ? It was a sample application created by Sun for its Java BluePrints program. The Java Petstore was designed to illustrate how J2EE (and then Java EE) could be used to develop an eCommerce web application. Yes, the point of the Petstore is to sell pets online. The idea was to build an application with a certain technology.


## Technologies used:
- **Technologies** : Java EE 7 (JPA 2.1, CDI 1.1, Bean Validation 1.1, EJB Lite 3.2, JSF 2.2, JAX-RS 2.0), Java SE 7 (because that's the minimum required by Java EE 7), Twitter Bootstrap (Bootstrap 3.x, JQuery 2.x, PrimeFaces 6.x)
- **Application Servers** : WildFly 10, WildFly 11
- **Database** : MySQL 5.7
- **Summary** : A Petstore-like application using Java EE 7

## Assessment
### **Application Discovery**
- Discovery of Applications from server. Click on **Azure Migrate -> Servers -> Azure Migrate: Server Assessment -> Discovered Servers - > Application Discovered Tab.**

![Application Discovery](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/application-discovery.png?raw=true)
****

### Application Dependency
- Shows Dependency topology of Applications from one or more dependent servers. Click on **Azure Migrate -> Servers -> Azure Migrate: Server Assessment -> Discovered Servers - > Application Discovery Tab.**

![Application Dependency](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/application-dependency.png?raw=true)
****

### Steps for server Assessment:

1. Click on **Azure Migrate -> Servers -> Azure Migrate: Server Assessment.**
    - Azure Migrate Dashboard for Server Assessment which includes:
        - Discovered Servers
        - Groups
        - Assessments
        - Notifications

![Server Assessment tool](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-1.png?raw=true)
****

2. Create groups for multiple dependent Servers and click on created group and proceed for Assess server Option.
**Azure Migrate -> Servers -> Azure Migrate: Server Assessment -> Groups -> Group -> Create Group.**
    - Group includes: 
        - How many machines are in the group. and from where you can perform following operations:
        - Add Machines to the group
        - Remove Machines from the group
        - Assess Servers / Create Assessment
        - View Dependencies
        - Delete Group

![Create groups](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-2.png?raw=true)
****

3. Click on Created Assessment.
**Azure Migrate -> Servers -> Azure Migrate: Server Assessment -> Groups -> Select Created Group -> Assess Servers -> Create Assessment.**

![Create Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-3.png?raw=true)
****

4. You will redirect to Assessment Overview.
**Azure Migrate -> Servers -> Azure Migrate: Server Assessment -> Assessments -> Select Created Assessment -> Overview.**
    - Overview includes:
        - Azure Readiness
        - Monthly Cost Estimate
        - Storage Monthly Cost Estimate

![Assessment overview](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-4.png?raw=true)
****

5. Click on Azure Readiness.
**Azure Migrate -> Servers -> Azure Migrate: Server Assessment -> Assessments -> Select Created Assessment -> Azure Readiness.**
    - Azure Readiness includes:
        - Ready for Azure
        - Ready with conditions
        - Not Ready for Azure
        - Readiness unknown

![Azure Readiness](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-5.png?raw=true)
****

6. Click on Cost Details.
**Azure Migrate -> Servers -> Azure Migrate: Server Assessment -> Assessments -> Select Created Assessment -> Cost Details.**
    - Cost Details includes:
        - Compute Cost
        - Storage Cost
            - Standard HDD Managed disks
            - Standard SSD Managed disks
            - Premium managed disks

![Cost Details](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-6.png?raw=true)
****

7. Click on Server on which Applications are installed.
**Azure Migrate -> Servers -> Azure Migrate: Server Assessment -> Assessments -> Select Created Assessment -> Azure Readiness -> Select Server.**
    - It includes:
        - Migration tool suggestions
        - Reason why to use suggested tool
        - Compute details
        - Storage details
        - Network details


![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-7.png?raw=true)

![Assessment](https://github.com/Click2Cloud/Azure-Migrate/blob/master/images/java-petstore/server-assessment-8.png?raw=true)
****