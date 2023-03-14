FROM ghcr.io/dbt-labs/dbt-bigquery:1.4.1
WORKDIR /support
RUN mkdir /root/.dbt
COPY profiles.yml /root/.dbt
RUN mkdir /root/ethereum
WORKDIR /ethereum
COPY . .
EXPOSE 8080
ENTRYPOINT [ "bash"]