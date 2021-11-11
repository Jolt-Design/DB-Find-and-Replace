# Jolt DB Find and Replace

## Usage

1. Put a dump of the database you want to work on in the db-seed-input folder
2. Run `docker-compose up -d`
3. Check that there are no errors importing the file with `docker-compose logs db`
4. Once everything has finished loading, go to http://localhost:8080/
5. Database details are:
  - Database name: `database`
  - Username: `root`
  - Password: `joltdbpass`
  - Host: `db`
  - Port: leave empty
6. Set up everything else and run the replace
7. Run `export.sh` or `export.cmd` depending on your platform
8. Check ./db-output/output.sql for your results (make sure it isn't an error message before you proceed)
9. Close everything with `docker-compose down`

### CLI

If you want to use the CLI for some reason, do the above but use `cli.sh` instead of steps 4-6. If you're on Windows, just copy the last line of that file and use that.

e.g. `./cli.sh -s foo -r bar`
