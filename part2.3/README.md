# # Exercise 2.1 ports_exercise README

Cloned the following github repositories and used the answer Dockerfiles from exercises 1.11 and 1.12

Glory for the backend and frontend goes to Helsinki https://github.com/docker-hy

https://github.com/docker-hy/backend-example-docker

https://github.com/docker-hy/frontend-example-docker


# FILES

```code
tree
.
├── backend-example-docker
│   ├── config.js
│   ├── Dockerfile
│   ├── index.js
│   ├── logs.txt
│   ├── package.json
│   ├── package-lock.json
│   ├── README.md
│   └── server
│       ├── controllers
│       │   └── messageController.js
│       ├── database
│       │   └── connection.js
│       ├── index.js
│       ├── models
│       │   └── message.js
│       ├── redis.js
│       └── routes.js
├── compose-frontend-backend-2.3-test.png
├── docker-compose.yml
├── frontend-example-docker
│   ├── config.js
│   ├── Dockerfile
│   ├── package.json
│   ├── package-lock.json
│   ├── README.md
│   ├── src
│   │   ├── assets
│   │   │   ├── custom.css
│   │   │   ├── toscalogo_black.svg
│   │   │   ├── toscalogo_color.svg
│   │   │   ├── toscalogo_grayscale.svg
│   │   │   └── toscalogo_white.svg
│   │   ├── components
│   │   │   ├── App.js
│   │   │   ├── ExercisesList
│   │   │   │   ├── ExerciseAmIRunning.js
│   │   │   │   ├── ExerciseBackendConnection.js
│   │   │   │   ├── ExerciseDBConnection.js
│   │   │   │   ├── ExerciseNginxSetup.js
│   │   │   │   ├── ExerciseRedisSetup.js
│   │   │   │   └── index.js
│   │   │   ├── Footer.js
│   │   │   ├── NavBar.js
│   │   │   ├── OnlyView.js
│   │   │   └── Router.js
│   │   ├── index.js
│   │   └── util
│   │       ├── apiConnection.js
│   │       ├── common.js
│   │       ├── redux
│   │       │   ├── index.js
│   │       │   ├── messageReducer.js
│   │       │   └── simpleReducer.js
│   │       └── store.js
│   ├── util
│   │   └── common.js
│   └── webpack.config.js
└── README.md

13 directories, 46 files
```

# Setup
```code
git clone git@github.com:docker-hy/backend-example-docker.git
cd backend-example-docker
rm -rf .git
wget https://raw.githubusercontent.com/vaaPo/defa_docker_hw/master/part1.12/backend/Dockerfile
git@github.com:docker-hy/frontend-example-docker.git
cd frontend-example-docker
rm -rf .git
wget https://raw.githubusercontent.com/vaaPo/defa_docker_hw/master/part1.12/frontend/Dockerfile
cd ..
```
# RUN
```code
docker-compose up
```

# test

Check with browser http://localhost:5000/

Screenshot of working setup:
![see screenshotfile](./compose-frontend-backend-2.3-test.png?raw=true "part2.2/ports_exercise/ports_2.1-test.png")

