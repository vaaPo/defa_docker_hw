# # Exercise 2.9 Volumes for database and redis

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


# check volumes
    $ docker volume ls
    DRIVER              VOLUME NAME
    local               5a8b9f231f74ccb7c71428d020208b07e4da536fb02172dc3addd81e985db9c8
    local               ab49265b80651d8754f53ebfc801bb5d8e11a5673fe14911d314e4de9c5983ef
    local               b8fba24f0e74da11701a1d3a9d2109a4b942549fccf449a5b2a8c70a120fb8f7
    local               part28_database
    local               part29_database
    local               part29_redisdata

    $ docker volume inspect part29_database
    [
        {
            "CreatedAt": "2020-01-13T00:32:25+02:00",
            "Driver": "local",
            "Labels": {
                "com.docker.compose.project": "part29",
                "com.docker.compose.volume": "database"
            },
            "Mountpoint": "/var/lib/docker/volumes/part29_database/_data",
            "Name": "part29_database",
            "Options": null,
            "Scope": "local"
        }
    ]
    $ sudo ls -al /var/lib/docker/volumes/part29_database/_data
    total 132
    drwx------ 19 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 .
    drwxr-xr-x  3 root         root          4096 tammi 13 00:32 ..
    drwx------  6 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 base
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:33 global
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_commit_ts
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_dynshmem
    -rw-------  1 guest-kcrwdx guest-kcrwdx  4535 tammi 13 00:32 pg_hba.conf
    -rw-------  1 guest-kcrwdx guest-kcrwdx  1636 tammi 13 00:32 pg_ident.conf
    drwx------  4 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:37 pg_logical
    drwx------  4 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_multixact
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_notify
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_replslot
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_serial
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_snapshots
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_stat
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:37 pg_stat_tmp
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_subtrans
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_tblspc
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_twophase
    -rw-------  1 guest-kcrwdx guest-kcrwdx     3 tammi 13 00:32 PG_VERSION
    drwx------  3 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_wal
    drwx------  2 guest-kcrwdx guest-kcrwdx  4096 tammi 13 00:32 pg_xact
    -rw-------  1 guest-kcrwdx guest-kcrwdx    88 tammi 13 00:32 postgresql.auto.conf
    -rw-------  1 guest-kcrwdx guest-kcrwdx 26588 tammi 13 00:32 postgresql.conf
    -rw-------  1 guest-kcrwdx guest-kcrwdx    36 tammi 13 00:32 postmaster.opts
    -rw-------  1 guest-kcrwdx guest-kcrwdx    94 tammi 13 00:32 postmaster.pid

    $ docker volume inspect part29_redisdata
    [
        {
            "CreatedAt": "2020-01-13T00:32:21+02:00",
            "Driver": "local",
            "Labels": {
                "com.docker.compose.project": "part29",
                "com.docker.compose.volume": "redisdata"
            },
            "Mountpoint": "/var/lib/docker/volumes/part29_redisdata/_data",
            "Name": "part29_redisdata",
            "Options": null,
            "Scope": "local"
        }
    ]
    $ sudo ls -al /var/lib/docker/volumes/part29_redisdata/_data
    [sudo] password for paavo: 
    total 8
    drwxr-xr-x 2 guest-kcrwdx paavo 4096 tammi  3 03:31 .
    drwxr-xr-x 3 root         root  4096 tammi 13 00:32 ..

    $ redis-cli
    127.0.0.1:6379> ping
    PONG
    127.0.0.1:6379> set mykey toimistna
    OK
    127.0.0.1:6379> get mykey
    "toimistna"
    127.0.0.1:6379> save
    OK
    $ sudo ls -al /var/lib/docker/volumes/part29_redisdata/_data
    total 12
    drwxr-xr-x 2 guest-kcrwdx paavo 4096 tammi 13 01:07 .
    drwxr-xr-x 3 root         root  4096 tammi 13 00:32 ..
    -rw-r--r-- 1 guest-kcrwdx paavo  125 tammi 13 01:07 dump.rdb

    BUT why the app doesnt save redis data?
    $ sudo docker exec -it c2b2da25c4ce /bin/sh
    /data # ls -al
    total 12
    drwxr-xr-x    2 redis    redis         4096 Jan 12 23:07 .
    drwxr-xr-x    1 root     root          4096 Jan 12 22:45 ..
    -rw-r--r--    1 redis    redis          125 Jan 12 23:07 dump.rdb
    /data # 

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
            