# aws-cloudwatchlogs

Herewith the final architecture of the lab:
![Image of CloudWatchLogs Architecture](https://d2908q01vomqb2.cloudfront.net/fc074d501302eb2b93e2554793fcaf50b3bf7291/2018/04/25/SPO_Data-ingestion_final.png)

## Prologue: Understanding about the architecture :smile:
This lab is going to covers the following:
1. AWS CloudWatch Logs Agent
  1. Install CloudWatch Logs Agent on EC2 Amazon Linux 2
  1. Look into CloudWatch Logs Agent config files - (a) awslogs.conf, (b) awscli.conf
  1. Publish 2 types of log files - (a) delimiter, (b) json
1. Creating CloudWatch Metrics & Alarms
  1. Create Filter/Metrics for both delimiter & JSON
  1. Configure SNS to send notification as soon as the Alarms triggered
1. Using CloudWatch Logs Insight
  1. Type of query
1. Publish CloudWatch Metrics to AWS
  1. Prebuilt CloudWatch Metrics - Memory, Disk Usage etc
  1. Custom Built CloudWatch Metrics
1. Best Practices (Notes)


## Step 1: AWS CloudWatch Logs Agent
