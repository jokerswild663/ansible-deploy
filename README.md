Instructions
------------

1. Install ansible on host machine
2. create .aws directory in home dir
3. download .pem key file to $HOME/.aws/`<your key>`.pem
4. Set the following environmental variables
   - AWS_ACCESS_KEY='<your aws access key>'
   - AWS_SECRET_KEY='<your aws secret key>'
   - AWS_PRIVATE_KEY_NAME='<name of your private key file (without .pem extension)>'
5. `git clone https://github.com/jokerswild663/ansible-deploy` into your home directory
6. `cd ansible-deploy && \
ansible-playbook -e ec2_launch_aws_access_key=$AWS_ACCESS_KEY -e ec2_launch_aws_secret_key=$AWS_SECRET_KEY -e ec2_launch_keyname=$AWS_PRIVATE_KEY_NAME deploy_scripts.yml --private-key=$HOME/.aws/<your private key filename>`

6. When provisioning is finished, the public dns of the newly created ec2 instance will be ready.
7. ssh -i `$HOME/.aws/<your private key filename>` <address returned for ec2-instance>

