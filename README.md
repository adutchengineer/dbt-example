# install postgresql 
Follow the instructions on https://www.postgresqltutorial.com/postgresql-getting-started/ to get the sample database into the postgresql db.

# Install dbt
Install dbt as suggested on their cli page (https://docs.getdbt.com/dbt-cli/cli-overview).

```
dbt init
```

After creating and adding the dbt-codegen to the packages.yml, 
I ran
```
dbt deps
```
, downloading the dbt-codegen package. 

```
dbt run-operation generate_source --args '{"schema_name": "public", "database_name": "dvdrental"}'
```

```
dbt run-operation generate_base_model --args '{"source_name": "dvdrental", "table_name": "actor"}'
```

```
dbt run-operation generate_model_yaml --args '{"model_name": "actor"}'
```

```
dbt docs generate
```

```
dbt docs serve
```
