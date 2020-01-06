# Exercise 1.5 README
For the following exercises, return both Dockerfile(s) and the command you used to run the container(s)

# Files
```
$tree
.
├── Dockerfile
├── README.md
└── src
    └── run_part1.5.sh

1 directory, 3 files

```

# commands
```code
docker build --no-cache -t defapart15 .
docker images
docker run -i --volume=$pwd/src:/scripts defapart15

```

# example run
```code
paavo@silber:~/defa/docker/part1.5/src$ docker run -i --volume=/home/paavo/defa/docker/part1.5/src:/scripts defapart15
Input website fqdn like helsinki.fi :
helsinki.fi
Searching..
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   231  100   231    0     0   2287      0 --:--:-- --:--:-- --:--:--  2287
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>
------------------------------------------------------------------------
+++ the mounted src volume was good to have because the script was easy to edit and then just rerun
+++ the run -i was necessary to get the input in terminal
+++
```
