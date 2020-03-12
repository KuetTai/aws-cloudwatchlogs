# aws-cloudwatchlogs

Herewith the final architecture of the lab:
![Image of CloudWatchLogs Architecture](https://d2908q01vomqb2.cloudfront.net/fc074d501302eb2b93e2554793fcaf50b3bf7291/2018/04/25/SPO_Data-ingestion_final.png)

## Prologue: Understanding about the architecture :smile:


## Agenda
This lab is going to covers the following:
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
- [References](#References)


## Chapter 1
### Create IAM roles
1. After login to AWS console, go to `IAM` service
1. On the left hand side, click `Roles`, after that, click `Create role` button at the next screen
  1. At this setup wizard, follows through the steps below:
    1. Under __Select type of trusted entity__, select `AWS Service`
    1. Under __Choose a use case__, select `EC2`
    1. Leave everything else as default, scroll to the bottom, click `Next: Permissions` button
  1. In the __Filter policies__ text box, type this `CloudWatchAgentServerPolicy`, tick on the checkbox appears
  1. Scroll to the bottom, click `Next: Tags` button
  1. Click on `Next: Review` button
    1. __Role name*__: `MyEC2CloudWatchAgentRole`
    1. Scroll to the bottom, click `Create role` button
  1. You should see the following success role creation message:
  - *The role __MyEC2CloudWatchAgentRole__ has been created*

### Create EC2
1. Next, navigate to `EC2` service


## Chapter 2
Alarms

## Chapter 3
Quert Insight

## Chapter 4
Custom Metrics

## Chapter 5
Best Practices :D

## References
