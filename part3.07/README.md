# [x] 3.07 Article about when to use Docker and what are the benefits

First couple of definitions for the casual reader:
+----------+------------------------------------------------------------+-------------------------------------------------+-----+-----+
| **term** | **definition**                                             | **url**                                         |     |     |
+----------+------------------------------------------------------------+-------------------------------------------------+-----+-----+
| docker   | Means 3 things                                             |                                                 |     |     |
|          | 1.) is tool for creating, deploying and running containers |                                                 |     |     |
|          | 2.) is standardized way to package software to containers  |                                                 |     |     |
|          | 3.) is container engine to run containers on top of OS     | https://www.docker.com/resources/what-container |     |     |
+----------+------------------------------------------------------------+-------------------------------------------------+-----+-----+

## When to use Docker Checklist

If you answer yes to 3 questions, then Docker can be recommended ?

[ ] 1. Do you have heterogenous environment consisting of several operating systems e.g. for development, testing and production?
[ ] 2. The system consists of applications which have tight version depedencies and its hard to roll-out new versions applications?
[ ] 3. In the target Operating system there are no correct versions of the applications in the OS package distribution?
[ ] 4. There are bottlenecks in the handovers from different phases e.g. from development to testing etc.?
[ ] 5. It is hard to know what are the dependencies between the applications due the fact that there are also other services in the same environment.
[ ] 6. Developers, maintainers etc. involved devops staff have limited root-rights in the target environments which prevents several things in development etc..
[ ] 7. You feel that you are dealing with ancient ways of working and you need to learn new todays technology.
[ ] 8. You are ready to read carefully the software vendors licenses about headless installations and ready to ask vendor for docker containers if they could have them for you.

## Benefits of using Docker 

There are several benefits of using the Docker in several stages of development, testing and production.

1.) Whereever the docker runs, you can use your containers for development, testing, demonstration and potentially also for production.
2.) You can share your work either in as version controlled sources e.g. via github repositories or as ready to use docker images via e.g. dockerhub.
3.) By sharing your code it is more likely someone will participate to development, meaning you can trust your own code later on.
4.) Carefully planned docker containers can be very performant and easy to deploy - many cloud server providers allow dockers.
5.) Images can be optimized to very small size compared to OS virtuals, only software needed to run is included.
6.) Docker has cool layering of software for the docker containers, meaning reuse you don't know about is there making it even more compact.
7.) Inside containers you can use your own authentication/authorization mechanisms, only outside available ports need to be secured in host os.
8.) Docker containers can share with the host volumes: directories and files which helps in building persistence.
9.) Docker images have built in versioning system, it is painless to either get the latest or stick to certain version.
10.) Dockers available via artifactories are typically having some sort of backers scheme: developers and so on. Sometimes they say certain container images are certified meaning they are pretty good.
11.) If you know and can docker, then you are cool.




