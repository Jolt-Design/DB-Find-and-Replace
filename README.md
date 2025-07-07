# Jolt DB Find and Replace

## Premise

This runs a copy of [Search Replace DB by Interconnectit](https://github.com/interconnectit/Search-Replace-DB/) in Docker. See the readme in `./src/README.md` for advanced usage.

## Usage

1. Run `yarn install`
2. Put an SQL dump of the database you want to work on in the db-seed-input folder
3. Run `docker compose up -d`
4. Check that there are no errors importing the file with `docker compose logs db`
5. Once everything has finished loading, go to <http://localhost:8080/>
6. Database details are:
  - Database name: `database`
  - Username: `root`
  - Password: `joltdbpass`
  - Host: `db`
  - Port: leave empty
7. Set up everything else and run the replace
8. Run `yarn export`
9. Check ./db-output/output.sql for your results (make sure it isn't an error message before you proceed)
10. Close everything with `docker compose down`

### CLI

If you want to use the CLI instead, do the above but use `yarn cli` instead of steps 5-7.

e.g.

```sh
yarn cli -s foo -r bar
```

### Adminer

The setup provides a web interface for the SQL DB at <http://localhost:8081/>. The DB credentials will be automatically filled in, so just click login.
