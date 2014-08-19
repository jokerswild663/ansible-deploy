Instructions
------------

1. Install ansible and python boto library on host machine.  This can be done with pip.
2. create .aws directory in home dir
3. download .pem key file to $HOME/.aws/`your key`.pem.  Then `chmod 600 `your key.pem`
4. Set the following environmental variables
   - AWS_ACCESS_KEY=`your aws access key`
   - AWS_SECRET_KEY=`your aws secret key`
   - AWS_PRIVATE_KEY_NAME=`name of your private key file (without .pem extension)`
5. `git clone https://github.com/jokerswild663/ansible-deploy` into your home directory
6. run `./deploy.sh` to start deploying to ec2.
7. When provisioning is finished, the public dns of the newly created ec2 instance will be ready.
8. ssh -i $HOME/.aws/`your private key filename` `address returned for ec2-instance`

