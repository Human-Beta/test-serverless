export HOST=$(aws ec2 describe-instances --profile serverless-admin --region  us-east-1 \
--filters "Name=tag:Name,Values=ServerlessCreatedInstance" "Name=instance-state-name,Values=running" \
--query "Reservations[*].Instances[*].[PublicDnsName]" --output text)
