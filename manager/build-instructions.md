# Clone manager repo

```
git clone https://github.com/CloudOpting/cloudopting-manager
```

# Configure DB

Edit the file: `rest-component/src/main/resources/config/application-prod.yml`.

Change the properties `repo_url`, `url`, `serverName` as follows and choose a password different to the default one.

```yaml
...
jcr:
    repo_url: http://jcr:8080/server
        
datasource:
    dataSourceClassName: org.postgresql.ds.PGSimpleDataSource
    driver: org.postgresql.Driver
    url: jdbc:postgresql://db:5432/cloudopting
    databaseName: cloudopting
    serverName: db
    username: postgres
    password: 1qaz2wsx
...
```

# Build war

`./build-war.sh`

# Copy the war to this `/manager` folder and build the image

`docker build -t cloudopting/manager-db .`

or just execute docker-compose on the root path of the repo.

Notice the docker-compose.yml file is prepared for pulling the image from the registry, uncomment the `build` line and comment the `image` line to build from local instead.

```yaml
# image: cloudopting/manager
build: ./manager
```
