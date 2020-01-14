# # Exercise 3.01 OPTIMIZE 

    $ docker-compose images
        /usr/lib/python2.7/dist-packages/requests/__init__.py:80: RequestsDependencyWarning: urllib3 (1.22) or chardet (2.1.1) doesn't match a supported version!
        RequestsDependencyWarning)
                Container                    Repository              Tag       Image Id      Size  
        -------------------------------------------------------------------------------------------
        adminer_container10         adminer                         latest   50516a0a687a   86.9 MB
        backend-example-docker10    vaapo/backend-example-docker    latest   af88ed6181db   539 MB 
        frontend-example-docker10   vaapo/frontend-example-docker   latest   4144eea94c5e   631 MB 
        postgres_container10        postgres                        latest   ec5d6d5f5b34   375 MB 
        redis_container10           redis                           alpine   8af6a13284bf   31.5 MB
        vaapo_proxy_nginx10         vaapo/nginx10                   latest   bfeada42e62f   52.6 MB
    
### first iteration on backend
    $ docker image ls | grep 301
    back301test                             latest              455e76c8e368        45 seconds ago      529MB
### second iteration on backend
    $ docker image ls | grep 301
    back301test                             latest              b913b1f295fc        7 seconds ago       477MB

### first iteration on frontend
    $ docker image ls | grep front301
    front301test                            latest              d3fbb81e7f83        57 seconds ago      573MB
    