FROM postgres:9
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
ADD ./files/prod_postgres_backup_cloudopting_2015.12.10_v2.backup.sql /docker-entrypoint-initdb.d/populate.sql
