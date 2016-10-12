set -x
set -e

mkdir $HOME/.aws
touch $HOME/.aws/config
chmod 600 $HOME/.aws/config
echo "[profile eb-cli]" > $HOME/.aws/config
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> $HOME/.aws/config
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $HOME/.aws/config
echo "[default]" > $HOME/.aws/config
echo "region = us-east-1" > $HOME/.aws/config

mkdir .elasticbeanstalk
touch .elasticbeanstalk/config.yml
chmod 600 .elasticbeanstalk/config.yml
echo "branch-defaults:" > .elasticbeanstalk/config.yml
echo "\tmaster:" > .elasticbeanstalk/config.yml
echo "\tenvironment: rumbl-dev" > .elasticbeanstalk/config.yml
echo "\tgroup_suffix: null" > .elasticbeanstalk/config.yml
echo "global:" > .elasticbeanstalk/config.yml
echo "\tapplication_name: rumbl" > .elasticbeanstalk/config.yml
echo "\tdefault_ec2_keyname: aws_new_key_pair" > .elasticbeanstalk/config.yml
echo "\tdefault_platform: Docker 1.11.2" > .elasticbeanstalk/config.yml
echo "\tdefault_region: us-east-1" > .elasticbeanstalk/config.yml
echo "\tprofile: eb-cli" > .elasticbeanstalk/config.yml
echo "\tsc: git" > .elasticbeanstalk/config.yml
