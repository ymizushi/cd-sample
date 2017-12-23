# Terraform 

## Init 
terraform init

## Dry-run
terraform plan -var 'access_key=${AWS_ACCESS_KEY}' -var 'secret_key=${AWS_SECRET_KEY}'

## Run
terraform apply -var 'access_key=${AWS_ACCESS_KEY}' -var 'secret_key=${AWS_SECRET_KEY}'
