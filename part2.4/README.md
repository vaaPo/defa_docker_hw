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
It seems to work with compute=2 but with compute=10 works faster

If you scale up to 200 you are likely goin to make your computer to crawl.

```code
docker-compose up --scale compute=10
```

# test

Check with browser http://localhost:3000/ 

Screenshot of working setup BEFORE it is scaled, the button doesnt turn to green
![see screenshotfile](./BEFORE-non-scaled-2.4.png?raw=true "BEFORE-non-scaled-2.4.png")

Be careful not to scale up too much like I did to 200 :)
![see screenshotfile](./scaling_to_200_controlc_death.png?raw=true "scaling_to_200_controlc_death.png")

After
![see screenshotfile](./AFTER-scaled-10-compute.png?raw=true "AFTER-scaled-10-compute.png?")
