# aws-cloudwatchlogs

1. Item1
   1. SubItemA
   2. SubItemB
      - wat
        - hi

Herewith the final architecture of the lab:
![Image of CloudWatchLogs Architecture](https://d2908q01vomqb2.cloudfront.net/fc074d501302eb2b93e2554793fcaf50b3bf7291/2018/04/25/SPO_Data-ingestion_final.png)

## Prologue: Understanding about the architecture :smile:


## Agenda
This lab is going to covers the following:
- [Prologue: Preparing your environment](#Prologue)
- [Chapter 1: AWS CloudWatch Logs Agent](#Chapter-1)
  - Install CloudWatch Logs Agent on EC2 Amazon Linux 2
  - Look into CloudWatch Logs Agent config files - (a) awslogs.conf, (b) awscli.conf
  - Publish 2 types of log files - (a) delimiter, (b) json
- [Chapter 2: Creating CloudWatch Metrics & Alarms](#Chapter-2)
  - Create Filter/Metrics for both delimiter & JSON
  - Configure SNS to send notification as soon as the Alarms triggered
- [Chapter 3: Using CloudWatch Logs Insight](#Chapter-3)
  - Type of query
- [Chapter 4: Publish CloudWatch Metrics to AWS](#Chapter-4)
  - Prebuilt CloudWatch Metrics - Memory, Disk Usage etc
  - Custom Built CloudWatch Metrics
- [Chapter 5: Best Practices (Notes)](#Chapter-5)
- [Appendix and References](#References-and-References)


## Prologue
### Create IAM roles
By completing this chapter, we will achieve the following:

![Image of Prologue Diagram](https)
1. Login into AWS Console
1. After login to AWS console, go to `IAM` service
1. On the left hand side, click `Roles`
1. After that, click `Create role` button at the next screen
1. At this setup wizard, follows through the steps below:
      -  Under __Select type of trusted entity__, select `AWS Service`
      -  Under __Choose a use case__, select `EC2`
      -  Leave everything else as default, scroll to the bottom, click `Next: Permissions` button
1. In the __Filter policies__ text box, type this `CloudWatchAgentServerPolicy`, tick on the checkbox appears
      -  Scroll to the bottom, click `Next: Tags` button
      -  Click on `Next: Review` button
1. In the next screen:
      -  __Role name*__: `MyEC2CloudWatchAgentRole`
      -  Scroll to the bottom, click `Create role` button
1. You should see the following success role creation message:

*The role __MyEC2CloudWatchAgentRole__ has been created*

### Create EC2
1. Next, navigate to `EC2` service
1. On the left hand side, look for `Instances` and click on it
1. After that, click `Launch Instance` button
1. At this setup wizard, follows through the steps below:
      - Click on `Select` button next to __Amazon Linux 2 AMI (HVM)__
      - Click on `Next: Configure Instance Details`
1. Step 3: Configure Instance Details
      - Auto-assign Public IP: `Use subnet setting (Enable)`
      - IAM role: `MyEC2CloudWatchAgentRole`
      - Leave everything as default
      - Scroll to the bottom, click `Next: Add Storage` button
1. Click `Next: Add Tags` button
1. Step 5: Add Tags
      -  Click `Add Tag` button
      -  Key: `Name`
      -  Value: `myWebApp`
      -  Click `Next: Configure Security Group`
1. Step 6: Configure Security Group
      -  Security group name: `myWebAppSG`
      -  Click `Add Rule` button, select __Type:__ `HTTP`
      -  Click `Review and Launch` button
1. Step 7: Review Instance Launch
      -  Take a final look on the configuration
      -  Click `Launch` button
1. At the popup dialog, you will see two (2) dropdown input.
      -  `Create a new key pair`
      -  __Key pair name:__ `lab-cwl-agent`
      -  Click `Download Key Pair`
      -  Check on __I acknowledge that...__
      -  Click `Launch Instances` button
1. Wait until your newly create instance has `running` __Instance State__.
1. Congrats! You have completed the __Prologue__

## Chapter 1
! make sure you completed the setup in [Prologue](#Prologue) before proceeding.

By completing this chapter, we will achieve the following:

![Image of Chapter 1 Architecture Diagram](https)
### SSH into your newly created EC2
1. You should be viewing __EC2__ listing page
1. Click on the checkbox appears beside `myWebApp`
1. Click on `Connect` button on top of EC2 listing
1. Follow the steps to SSH into `myWebApp` __EC2__

### Setting up your environments
Prepare software: required for CloudWatch Logs agent to work:
```bash
# Run the following commands as ec2-user
## Ensure all softwares are up to date
sudo yum update -y

## Install AWS Cloudwatch Logs Agent
sudo yum install awslogs -y

## Important Folders/Files
# - /etc/awslogs/awslogs.conf <-- Main configure files!
# - /etc/awslogs/awscli.conf  <-- cli config, usually need to change it 1 time only
# - /var/log/awslogs.log      <-- storing awslogs agent
```

Prepare software: required for this lab to perform simulation:
```bash
## Install PHP
## This is to simulate
##  - page not found error
##  - page redirection
##  - healthy page
sudo amazon-linux-extras install -y php7.2

## Install Apache Web Server
## This is important for log simulation
##  - in delimiter format
##  - in JSON format
sudo yum install httpd -y
```


## Chapter 2
By completing this chapter, we will achieve the following:

![Image of Chapter 2 Architecture Diagram](https)
Alarms

## Chapter 3
By completing this chapter, we will achieve the following:

![Image of Chapter 3 Architecture Diagram](https)
Query Insight

## Chapter 4
By completing this chapter, we will achieve the following:

![Image of Chapter 4 Architecture Diagram](https)
Custom Metrics

## Chapter 5
Best Practices :D

## Appendix and References
