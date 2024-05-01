Demo project
- Dataset: Microsoft Northwind database
- CI/CD: Github Actions ensure code quality with automatic dbt tests and SQLfluff on push.
- ELT Pipelines: Data pipelines follow ELT pattern with a staging layer and no hardcoded configs for prod environment
- Data Validation: dbt tests guarantee data quality and consistency in the warehouse.
- Data Warehouse: Using local Postgres for now, plan to migrate to a cloud warehouse (e.g., Snowflake, Redshift) for scaling.
