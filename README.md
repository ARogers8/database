 Database

## File contents

* create.sql -- drops and creates all tables
* alter.sql -- adds all primary and foreign keys
* eer_model.png -- EER diagram from dbdiagram.io

## Building the database

1. Set up all tables and keys in DBDiagram.
2. Converted incorrect code from DBD lang to Postgres lang String -> VARCHAR
3. Seperated Primary and Foreign keys from same document into alter.sql
4. Ran both create.sql and alter.sql in our teams querry in PGAdmin.
5. Made sure tables existed in PGAdmin.

## Changes to EER model

When trying to export from DBDiagraam to postegres it isn't converting the language so the code doesn't run in postegres.
