 Database

## File contents

* create.sql -- drops and creates all tables
* alter.sql -- adds all primary and foreign keys
* eer_model.png -- EER diagram from dbdiagram.io

## Building the database

Define environment variables:

``` sh
export PGHOST=data.cs.jmu.edu
export PGDATABASE=absent
export PGUSER=jmu_username
export PGPASSWORD=student_number
```

Run the following commands:

``` sh
psql < create.sql
psql < alter.sql
```

## Changes to EER model

When trying to export from DBDiagraam to postegres it isn't converting the language so the code doesn't run in postegres.
