!#/bin/bash
 echo "VPC_ID= $"(aws ec2 create-vpc \
    --cidr-block '10.0.0.0/16' \
    --tag-specification 'ResourceType=vpc,Tags=[{Key=Name,Value=shellVpc}]' \
    --region 'us-east-1')" 
    echo  "VPC ID '$VPC_ID' CREATED in '$AWS_REGION' region."

    echo "Creating Public Subnet..."
SUBNET_PUBLIC_ID= $"(aws ec2 create-subnet \
  --vpc-id $VPC_ID \
  --cidr-block $SUBNET_PUBLIC_CIDR \
  --availability-zone $SUBNET_PUBLIC_AZ \
  --query 'Subnet.{SubnetId:SubnetId}' \
  --output text \
  --region $AWS_REGION)"
echo "  Subnet ID '$SUBNET_PUBLIC_ID' CREATED in '$SUBNET_PUBLIC_AZ'" \
  "Availability Zone."