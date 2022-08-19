# PostgreSQL Cheat-Sheet

PostgreSQL or also known as Postgres, is a free and open-source relational database management system. PostgreSQL features transactions with Atomicity, Consistency, Isolation, Durability (ACID) properties automatically updatable views, materialized views, triggers, foreign keys, and stored procedures. It is designed to handle a range of workloads, from single machines to data warehouses or web services with many concurrent users.

___

## CONFIGS
https://pgtune.leopard.in.ua/#/

optimize-postgresql-server-performance : https://blog.crunchydata.com/blog/optimize-postgresql-server-performance

___

# TWEAKS

## **USE & GENERATE UUID**
- USE : `CREATE EXTENSION IF NOT EXISTS "uuid-ossp";`
https://dba.stackexchange.com/questions/122623/default-value-for-uuid-column-in-postgres


## JSON & JSONB
https://www.cloudbees.com/blog/unleash-the-power-of-storing-json-in-postgres
https://www.educba.com/postgresql-json-vs-jsonnb/

**JSON / JSONB  WITH POSTGRES** : https://www.blendo.co/blog/storing-json-in-postgresql/


## SERIALS
https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-serial/ : in this tutorial, we will introduce you to the PostgreSQL SERIAL and show you how to use the serial to create an auto-increment column in a database table.

# SQL