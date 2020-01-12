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

            