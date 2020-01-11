# # Exercise 2.6 Add database to example backend. Submit docker-compose.yml

Cloned the following github repositories and used the answer from exercise 2.3.

Glory for the backend and frontend goes to Helsinki https://github.com/docker-hy

And https://hub.docker.com/_/redis/



# FILES

```code
```

# Setup
Compose does the magic.
```code
```
    Asked Telegram about the need of networks definition because it seems that it works also without it.
    It seems that docker has implicit network on when it is built, so it is not needed.
    The redis environment REDIS= definition is a bit misleading, could it be REDIS_HOST ?
    
    
# RUN
```code
docker-compose up
```

# test

    $ curl http://localhost:5000/slow
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta content="ie=edge" http-equiv="x-ua-compatible">
        <title>Webpack App</title>
        <link href="vendors~main-1.css" rel="stylesheet" />
        <link href="main.css" rel="stylesheet" />
    </head>
    <body>
        <div id="root">
        </div>
        <script src="vendors~main.js" type="text/javascript"></script>
        <script src="main.js" type="text/javascript"></script>
    </body>
    </html>

# Check with browser http://localhost:5000/

Screenshot of working setup:
![see screenshotfile](./redis-2.5.png?raw=true "./redis-2.5.png")

