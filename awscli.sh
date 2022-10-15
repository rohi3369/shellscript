!#/bin/bash
 aws ec2 create-vpc \
    --cidr-block '10.0.0.0/16' \
    --tag-specification 'ResourceType=vpc,Tags=[{Key=Name,Value=shellVpc}]'
    --region 'us-east-1' 