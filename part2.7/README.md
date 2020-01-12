# 2.7 machine learning
    https://github.com/docker-hy/ml-kurkkumopo-frontend
    https://github.com/docker-hy/ml-kurkkumopo-backend
    https://github.com/docker-hy/ml-kurkkumopo-training
    https://en.wikipedia.org/wiki/Machine_learning
        https://github.com/sasumaki

## clone
    paavo@silber:~/defa/defa_docker_hw/part2.7$ git clone git@github.com:docker-hy/ml-kurkkumopo-backend.git
    Cloning into 'ml-kurkkumopo-backend'...
    remote: Enumerating objects: 33, done.
    remote: Total 33 (delta 0), reused 0 (delta 0), pack-reused 33
    Receiving objects: 100% (33/33), 5.04 KiB | 1.26 MiB/s, done.
    Resolving deltas: 100% (15/15), done.
    paavo@silber:~/defa/defa_docker_hw/part2.7$ git clone git@github.com:docker-hy/ml-kurkkumopo-training.git
    Cloning into 'ml-kurkkumopo-training'...
    remote: Enumerating objects: 24, done.
    remote: Total 24 (delta 0), reused 0 (delta 0), pack-reused 24
    Receiving objects: 100% (24/24), 54.74 KiB | 629.00 KiB/s, done.
    Resolving deltas: 100% (9/9), done.
## docker-compose.yml

    Note that the training requires 2 volumes and backend should share volume /src/model with training.

    The frontend will display on http://localhost:3000 and the application will tell if the subject of an image looks more like a cucumber or a moped.
    First 
    $ docker-compose up
    pulls lots of stuff due backend/requirements.txt
    Installing collected packages: numpy, pytz, six, python-dateutil, pandas, h5py, keras-applications, scipy, pyyaml, keras-preprocessing, keras, scikit-learn, astor, absl-py, termcolor, setuptools, protobuf, werkzeug, markdown, tensorboard, grpcio, gast, tensorflow, Pillow, imageio, urllib3, idna, chardet, certifi, requests, kiwisolver, pyparsing, cycler, matplotlib

![see screenshotfile](./machine_learning-2.7.png?raw=true "./machine_learning-2.7.png")