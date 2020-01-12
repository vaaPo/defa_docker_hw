# # Exercise 2.6 Add database to example backend. Submit docker-compose.yml

Cloned the following github repositories and used the answer from exercise 2.3.

Glory for the backend and frontend goes to Helsinki https://github.com/docker-hy

And https://hub.docker.com/_/redis/
https://hub.docker.com/_/postgres/



# FILES

```code
```

# Setup
Compose does the magic.
```code
```
    Apparently this requires network?    
    
# RUN
```code
docker-compose up
```

# test

# Check with browser http://localhost:5000/

Screenshot of working setup:
![see screenshotfile](./db-2.6.png?raw=true "./db-2.6.png")

# Check adminer with browser http://localhost:8080/
![see screenshotfile](./adminer-select-messages-2.6.png?raw=true "./../adminer-select-messages-2.6.png")


# fine tune postgres data volume place
    $ docker inspect 120e55a23790 | grep -A 10 Mounts
        "Mounts": [
            {
                "Type": "volume",
                "Name": "f251cc0b4fda6282507ba35a1ed7540b95e3d9d3b763dbabe397a84a87c7e01b",
                "Source": "/var/lib/docker/volumes/f251cc0b4fda6282507ba35a1ed7540b95e3d9d3b763dbabe397a84a87c7e01b/_data",
                "Destination": "/var/lib/postgresql/data",
                "Driver": "local",
                "Mode": "rw",
                "RW": true,
                "Propagation": ""
            }
    $ docker volume ls | grep f251cc0b4fda6282507ba35a1ed7540b95e3d9d3b763dbabe397a84a87c7e01b
    local               f251cc0b4fda6282507ba35a1ed7540b95e3d9d3b763dbabe397a84a87c7e01b

    Add volumes to docker-compose.yml
    $ docker volume ls | grep database
    local               part26_database
    local               redmine_database

    $ docker system prune
    to clean some space and make sure everything gets re-built

    $ docker-compose up
    $ docker volume inspect part26_database
    [
        {
            "CreatedAt": "2020-01-12T17:29:32+02:00",
            "Driver": "local",
            "Labels": {
                "com.docker.compose.project": "part26",
                "com.docker.compose.volume": "database"
            },
            "Mountpoint": "/var/lib/docker/volumes/part26_database/_data",
            "Name": "part26_database",
            "Options": null,
            "Scope": "local"
        }
    ]
    $ sudo ls -al /var/lib/docker/volumes/part26_database/_data
    total 132
    drwx------ 19 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 .
    drwxr-xr-x  3 root         root          4096 tammi 12 17:29 ..
    drwx------  6 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 base
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:30 global
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_commit_ts
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_dynshmem
    -rw-------  1 guest-kcrwdx guest-kcrwdx  4535 tammi 12 17:29 pg_hba.conf
    -rw-------  1 guest-kcrwdx guest-kcrwdx  1636 tammi 12 17:29 pg_ident.conf
    drwx------  4 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_logical
    drwx------  4 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_multixact
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_notify
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_replslot
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_serial
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_snapshots
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_stat
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:31 pg_stat_tmp
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_subtrans
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_tblspc
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_twophase
    -rw-------  1 guest-kcrwdx guest-kcrwdx     3 tammi 12 17:29 PG_VERSION
    drwx------  3 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_wal
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 12 17:29 pg_xact
    -rw-------  1 guest-kcrwdx guest-kcrwdx    88 tammi 12 17:29 postgresql.auto.conf
    -rw-------  1 guest-kcrwdx guest-kcrwdx 26588 tammi 12 17:29 postgresql.conf
    -rw-------  1 guest-kcrwdx guest-kcrwdx    36 tammi 12 17:29 postmaster.opts
    -rw-------  1 guest-kcrwdx guest-kcrwdx    94 tammi 12 17:29 postmaster.pid
    $ docker exec -it postgres_container6 psql --dbname=defadockerdb --username=kuikka --password
    Password: 
    psql (12.1 (Debian 12.1-1.pgdg100+1))
    Type "help" for help.

    defadockerdb=# \d
                List of relations
    Schema |      Name       |   Type   | Owner  
    --------+-----------------+----------+--------
    public | messages        | table    | kuikka
    public | messages_id_seq | sequence | kuikka
    (2 rows)

    defadockerdb=# select * from public.messages;
    id | body |         createdAt          |         updatedAt          
    ----+------+----------------------------+----------------------------
    1 | hipp | 2020-01-12 15:30:16.795+00 | 2020-01-12 15:30:16.795+00
    (1 row)

    defadockerdb=# quit

![see screenshotfile](./psql-vs-adminer.png?raw=true "./../psql-vs-adminer.png")
            