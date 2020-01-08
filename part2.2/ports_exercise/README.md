# # Exercise 2.1 ports_exercise README

# FILES
```code
tree
.
├── docker-compose.yml
├── ports_2.1-test.png
└── README.md

0 directories, 3 files
```

# RUN and stop with ctrl-c
```code
docker-compose up
```
# test with browser
http://localhost:18001/

# example
```code
paavo@silber:~/defa/defa_docker_hw/part2.2/ports_exercise$ docker-compose up
/usr/lib/python2.7/dist-packages/requests/__init__.py:80: RequestsDependencyWarning: urllib3 (1.22) or chardet (2.1.1) doesn't match a supported version!
  RequestsDependencyWarning)
Starting ports_exercise ... 
Starting ports_exercise ... done
Attaching to ports_exercise
ports_exercise           | 
ports_exercise           | > ports_exercise@1.0.0 start /usr/app
ports_exercise           | > node index.js
ports_exercise           | 
ports_exercise           | Listening on port 80, this means inside of the container. Use -p to map the port to a port of your local machine.
^CGracefully stopping... (press Ctrl+C again to force)
Stopping ports_exercise ... done
paavo@silber:~/defa/defa_docker_hw/part2.2/ports_exercise$ 
```

## answer, see screenshotfile ports_2.1-test.png
![see screenshotfile](./ports_2.1-test.png?raw=true "ports_2.1-test.png")
