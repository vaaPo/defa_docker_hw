# part 1.11

# example


paavo@silber:~/defa/docker/backend-example-docker$ docker run -it -v /home/paavo/defa/docker/backend-example-docker/logs.txt:/logs.txt -p8000:8000 vaapo/backend-example-docker
docker: Error response from daemon: driver failed programming external connectivity on endpoint optimistic_black (f64934659919aa9e1b96891af7084ba0cfdc53b851b8e5eb7fcd35b61f5e186b): Error starting userland proxy: listen tcp 0.0.0.0:8000: bind: address already in use.
ERRO[0000] error waiting for container: context canceled 
paavo@silber:~/defa/docker/backend-example-docker$ netstat -tulpn
(Not all processes could be identified, non-owned process info
 will not be shown, you would have to be root to see it all.)
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN      -                   
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      -                   
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      -                   
tcp        0      0 0.0.0.0:538             0.0.0.0:*               LISTEN      -                   
tcp6       0      0 :::1716                 :::*                    LISTEN      3137/kdeconnectd    
tcp6       0      0 :::22                   :::*                    LISTEN      -                   
tcp6       0      0 ::1:631                 :::*                    LISTEN      -                   
tcp6       0      0 :::8000                 :::*                    LISTEN      -                   
udp        0      0 0.0.0.0:43769           0.0.0.0:*                           -                   
udp        0      0 127.0.0.53:53           0.0.0.0:*                           -                   
udp        0      0 0.0.0.0:68              0.0.0.0:*                           -                   
udp        0      0 0.0.0.0:538             0.0.0.0:*                           -                   
udp        0      0 0.0.0.0:631             0.0.0.0:*                           -                   
udp        0      0 0.0.0.0:5353            0.0.0.0:*                           -                   
udp6       0      0 :::40227                :::*                                -                   
udp6       0      0 :::5353                 :::*                                -                   
udp6       0      0 :::1716                 :::*                                3137/kdeconnectd    
paavo@silber:~/defa/docker/backend-example-docker$ 
paavo@silber:~/defa/docker/backend-example-docker$ sudo ss -tulpn
Netid           State             Recv-Q            Send-Q                         Local Address:Port                          Peer Address:Port                                                                  
udp             UNCONN            0                 0                                    0.0.0.0:43769                              0.0.0.0:*                users:(("avahi-daemon",pid=1101,fd=14))              
udp             UNCONN            0                 0                              127.0.0.53%lo:53                                 0.0.0.0:*                users:(("systemd-resolve",pid=434,fd=12))            
udp             UNCONN            0                 0                                    0.0.0.0:68                                 0.0.0.0:*                users:(("dhclient",pid=3265,fd=6))                   
udp             UNCONN            0                 0                                    0.0.0.0:538                                0.0.0.0:*                users:(("gdomap",pid=1165,fd=4))                     
udp             UNCONN            0                 0                                    0.0.0.0:631                                0.0.0.0:*                users:(("cups-browsed",pid=1221,fd=7))               
udp             UNCONN            0                 0                                    0.0.0.0:5353                               0.0.0.0:*                users:(("avahi-daemon",pid=1101,fd=12))              
udp             UNCONN            0                 0                                       [::]:40227                                 [::]:*                users:(("avahi-daemon",pid=1101,fd=15))              
udp             UNCONN            0                 0                                       [::]:5353                                  [::]:*                users:(("avahi-daemon",pid=1101,fd=13))              
udp             UNCONN            0                 0                                          *:1716                                     *:*                users:(("kdeconnectd",pid=3137,fd=19))               
tcp             LISTEN            0                 128                            127.0.0.53%lo:53                                 0.0.0.0:*                users:(("systemd-resolve",pid=434,fd=13))            
tcp             LISTEN            0                 128                                  0.0.0.0:22                                 0.0.0.0:*                users:(("sshd",pid=1329,fd=3))                       
tcp             LISTEN            0                 5                                  127.0.0.1:631                                0.0.0.0:*                users:(("cupsd",pid=891,fd=8))                       
tcp             LISTEN            0                 16                                   0.0.0.0:538                                0.0.0.0:*                users:(("gdomap",pid=1165,fd=5))                     
tcp             LISTEN            0                 50                                         *:1716                                     *:*                users:(("kdeconnectd",pid=3137,fd=20))               
tcp             LISTEN            0                 128                                     [::]:22                                    [::]:*                users:(("sshd",pid=1329,fd=4))                       
tcp             LISTEN            0                 5                                      [::1]:631                                   [::]:*                users:(("cupsd",pid=891,fd=7))                       
tcp             LISTEN            0                 64                                         *:8000                                     *:*                users:(("webfsd",pid=1597,fd=3))                     
paavo@silber:~/defa/docker/backend-example-docker$ 

paavo@silber:~/defa/docker/backend-example-docker$ sudo /etc/init.d/webfs status
● webfs.service - LSB: Webfs simple HTTP server
   Loaded: loaded (/etc/init.d/webfs; generated)
   Active: active (running) since Mon 2020-01-06 11:35:25 EET; 8h ago
     Docs: man:systemd-sysv-generator(8)
    Tasks: 1 (limit: 4915)
   CGroup: /system.slice/webfs.service
           └─1597 /usr/bin/webfsd -k /var/run/webfs/webfsd.pid -r /var/www/html -u www-data -g www-data

tammi 06 11:35:25 silber systemd[1]: Starting LSB: Webfs simple HTTP server...
tammi 06 11:35:25 silber webfs[1564]:  * Starting httpd daemon webfsd
tammi 06 11:35:25 silber webfs[1564]:    ...done.
tammi 06 11:35:25 silber systemd[1]: Started LSB: Webfs simple HTTP server.

paavo@silber:~/defa/docker/backend-example-docker$ sudo /etc/init.d/webfs stop
[ ok ] Stopping webfs (via systemctl): webfs.service.


paavo@silber:~/defa/docker/backend-example-docker$ docker run -it -v $(pwd)/logs.txt:/usr/src/app/logs.txt -p8000:8000 vaapo/backend-example-docker

> backend-example-docker@1.0.0 start /usr/src/app
> cross-env NODE_ENV=production node index.js

Browserslist: caniuse-lite is outdated. Please run next command `npm update caniuse-lite browserslist`
Started on port 8000

$ curl http://localhost:8000
Port configured correctly, generated message in logs.txt


paavo@silber:~/defa/docker/backend-example-docker$ tail -f logs.txt 
1/6/2020, 7:00:48 PM: Connection received in root
1/6/2020, 7:01:04 PM: Connection received in root
