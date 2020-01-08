# Exercise 2.4 scaling-exercise README
Glory goes to Helsinki https://github.com/docker-hy
and 

https://github.com/docker-hy/scaling-exercise


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
cd scaling-exercise/
rm -rf .git
```
# RUN
```code
docker-compose up
```

# test

Check with browser http://localhost:3000/ 

Screenshot of working setup:
![see screenshotfile](./BEFORE-non-scaled-2.4.png?raw=true "BEFORE-non-scaled-2.4.png")

