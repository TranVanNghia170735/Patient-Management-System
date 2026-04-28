##!/bin/bash
#set -e # Stops the script if any command fails
#
#aws --endpoint-url=http://localhost:4566 cloudformation delete-stack \
#    --stack-name patient-management
#
#aws --endpoint-url=http://localhost:4566 cloudformation deploy \
#    --stack-name patient-management \
#    --template-file "./cdk.out/localstack.template.json"
#
#aws --endpoint-url=http://localhost:4566 elbv2 describe-load-balancers \
#    --query "LoadBalancers[0].DNSName" --output text

#!/bin/bash
set -e # Stops the script if any command fails

AWS="/c/Program Files/Amazon/AWSCLIV2/aws.exe"

"$AWS" --endpoint-url=http://localhost:4566 cloudformation delete-stack \
    --stack-name patient-management

"$AWS" --endpoint-url=http://localhost:4566 cloudformation deploy \
    --stack-name patient-management \
    --template-file "./cdk.out/localstack.template.json"

"$AWS" --endpoint-url=http://localhost:4566 elbv2 describe-load-balancers \
    --query "LoadBalancers[0].DNSName" --output text
