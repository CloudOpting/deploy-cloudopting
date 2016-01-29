# deploy-cloudopting
Assisted deploy for the entire CloudOpting platform.

Clone git repository: git clone https://github.com/CloudOpting/deploy-cloudopting.git

execute genCerts.sh: ./genCerts.sh

deploy CloudOpting: Executing `docker-compose -f compose.yml up` and it will install and run all in your computer.

You can access from your browser: localhost:8080/cloudopting

## Furder Instructions to customize your installation


## IMPORTANT NOTES:

- For production use, change the default password on `manager` and database. Follow [build instructions for manager](manager/build-instructions.md). It is needed to re-build all the project.