# # Exercise 2.3 compose backend frontend services README

Cloned the following github repositories and used the answer Dockerfiles from exercises 1.11 and 1.12

Glory for the backend and frontend goes to Helsinki https://github.com/docker-hy

https://github.com/docker-hy/backend-example-docker

https://github.com/docker-hy/frontend-example-docker


# FILES

```code
 tree
.
├── README.md
└── scaling-exercise
    ├── calculator
    │   ├── babel.config.js
    │   ├── Dockerfile
    │   ├── package.json
    │   ├── package-lock.json
    │   ├── src
    │   │   ├── commons.js
    │   │   ├── components
    │   │   │   ├── App.js
    │   │   │   ├── Playground.js
    │   │   │   └── Test.js
    │   │   ├── index.html
    │   │   └── index.js
    │   └── webpack.config.js
    ├── compute
    │   ├── Dockerfile
    │   ├── index.js
    │   ├── package.json
    │   └── package-lock.json
    ├── docker-compose.yml
    └── load-balancer
        └── Dockerfile

6 directories, 18 files
```

# Setup
```code
git clone git@github.com:docker-hy/scaling-exercise.git

git clone git@github.com:docker-hy/backend-example-docker.git
cd backend-example-docker 
cd scaling-exercise/
rm -rf .git
```
# RUN
```code
docker-compose up
```
WARNING: Image for service compute was built because it did not already exist.
 To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.

# test

Check with browser http://localhost:3000

Screenshot of working setup:
![see screenshotfile](./compose-frontend-backend-2.3-test.png?raw=true "part2.2/ports_exercise/ports_2.1-test.png")

