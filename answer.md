# pre-requisits
- [install terraform 0.12](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [terraform_scripts](terraform_scripts) contains terraform script to setup gcp cluster
	- put your service account file in [creds](creds) directory
	- edit [terraform_scripts/vars.tf](terraform_scripts/vars.tf) file and set correct values
- [install jq](https://stedolan.github.io/jq/download/)
- make answer-setup.sh and answer-cleaunup.sh scripts executable with command
	- `chmod a+x answer-setup.sh answer-cleaun.sh`


# Setup
- run the script answer-setup.sh with command `answer-setup.sh`
	- this will setup forst 7 points  mensioned in [problem statemenmt](problem.md)


# cleanup
- run the script answer-cleaun.sh with command `answer-cleaun.sh` this will remove everyting inclusding cluster