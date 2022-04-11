FROM postgres:12
ENV POSTGRES_PASSWORD=post123
ENV POSTGRES_DB=dvdrental
COPY dump.sql /docker-entrypoint-initdb.d/
COPY pg_hba.conf /etc/postgresql/pg_hba.conf
COPY postgresql.conf /etc/postgresql/postgresql.conf
EXPOSE 5432