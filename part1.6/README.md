# Part 1.6
Answer to 
1.6

Create a Dockerfile that starts with FROM devopsdockeruh/overwrite_cmd_exercise and works only as a clock.

The developer has poorly documented how the application works. Passing flags will open different functionalities, but we’d like to create a simplified version of it.

Add a CMD line to the Dockerfile and tag it as “docker-clock” so that docker run docker-clock starts the application and the clock output

# Files
```code
tree
.
├── Dockerfile
└── README.md

0 directories, 2 files
```
# build
```code
docker build -t vaapo/docker-clock .
```

# run
```code
 docker run -it vaapo/docker-clock 
```