# deploy-cloudopting
Assisted deploy for the entire CloudOpting platform.

Clone:

    Clone git repository: git clone https://github.com/CloudOpting/deploy-cloudopting.git

Execute:

    In first place execute genCerts.sh: ./genCerts.sh
    second ./deploy-monitor.sh
    finally ./deploy-cloudopting.sh

Access to Cloudopting:

    You can access from your browser: localhost:8080/cloudopting
    You can access to Kibana in: localhost:5601
    You can test your files with crane standalone in localhost:8888

## Furder Instructions to customize your installation


## IMPORTANT NOTES:

- For production use, change the default password on `manager` and database. Follow [build instructions for manager](manager/build-instructions.md). It is needed to re-build all the project.