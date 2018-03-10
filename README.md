# aws-cli
Docker container to run AWS CLI with credentials passed in via file.

Needed something quick and didnt find anything I liked in the wild.

This container assumes /etc/chainsaw/creds will be a bash file that will export these environment variables:
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION

# Build and Run
docker build -t capnchainsaw/aws-cli .
docker run -v /local/path/creds:/etc/chainsaw/creds -it capnchainsaw/aws-cli
