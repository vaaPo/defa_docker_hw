# 3.06 Do all or most of the optimizations from security to size.

    TODO fix backend
    TODO check if sense to fix alpine to node:something?
    TODO show original Dockerfile vs Dockerfile

## screenshots
![shot](./green-buttons-305.png)
![shot](./frontend-starts-onerow.png)
![shot](./frontend-service-shell-view-dist-305.png)


### Remarks
Noticed later that I had very strainge chown-operation and this was causing bloated images also for the ready node images.
The steps with "chown -R app:dockerapp ..." caused the image size to grow 48MB per each. So by removing it and solving the COPY with chown was better.
So perhaps I could have done it also with the ready-images and reached the similar results.

    paavo@silber:~/defa/defa_docker_hw/part3.04$ docker history backend304i
    IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
    9ac187def999        5 minutes ago       /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "npm …   0B                  
    c682eca7282a        5 minutes ago       /bin/sh -c #(nop)  USER app                     0B                  
    db10a10df5ad        5 minutes ago       /bin/sh -c chown -R app:dockerapp ./*           48.1MB              
    42adfeed0872        7 minutes ago       /bin/sh -c chown -R app:dockerapp .             48.1MB              
    f4d459f4677b        8 minutes ago       /bin/sh -c #(nop)  EXPOSE 8000                  0B       