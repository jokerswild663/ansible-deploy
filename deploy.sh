#!/bin/bash

ansible-playbook \
-e ec2_launch_aws_access_key=$AWS_ACCESS_KEY \
-e ec2_launch_aws_secret_key=$AWS_SECRET_KEY \
-e ec2_launch_keyname=$AWS_PRIVATE_KEY_NAME deploy_scripts.yml \
--private-key=$HOME/.aws/$AWS_PRIVATE_KEY_NAME.pem
