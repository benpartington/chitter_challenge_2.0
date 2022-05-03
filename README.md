
# Welcome to Chitter

This program mimics the operation of Twitter, which allows users to post a message to a public stream

### To set up the project

Clone this repository and then run:
```
bundle
```

### To set up the database

Connect to `psql` and create the `chitter` and `chitter_test` databases:

```
CREATE DATABASE chitter;
CREATE DATABASE chitter_test;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order (add the same table to each database).

### To run the Chitter app:

```
rackup -p 3000
```  

To view peeps, navigate to `localhost:3000/peeps`.

<br>

### To run tests:

```
rspec
```

### To run linting:

```
rubocop
```
