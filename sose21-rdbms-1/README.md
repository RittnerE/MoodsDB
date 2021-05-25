# Containerized MySQL (Example)

## How to Run

1. Ensure the DB migration scripts are defined properly in _./Dockerdir/db/docker-entrypoint-initdb.d/*.sql_.
2. Run service:
```
$ docker-compose up db
```

## How to Clean Up

To clean up properly the volumes containing the DB data have to be removed:
```
$ docker-compose down --volumes
```
