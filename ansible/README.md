# Ansible Playbook

# Init
```
ansible-playbook -i hosts site.yml
```

# Deploy
```
ansible-playbook -i hosts deploy.yml --extra-vars "aws_access_key=${AWS_ACCESS_KEY} aws_secret_key=${AWS_SECRET_KEY}"
```
