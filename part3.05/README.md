## [x] 3.05 Do a multi-stage build for the frontend project since we’ve come so far with the application.

### dist directory contents for working frontend without multi-stage build

    /usr/src/app $ ls -la
    total 424
    drwxrwxr-x    1 app      dockerap      4096 Jan 16 18:59 .
    drwxr-xr-x    1 root     root          4096 Jan 16 18:33 ..
    -rw-r--r--    1 root     root           979 Jan 16 15:27 .gitignore
    -rw-r--r--    1 root     root          1799 Jan 16 18:37 Dockerfile
    -rw-r--r--    1 root     root          1329 Jan 16 15:27 README.md
    -rw-r--r--    1 root     root           139 Jan 16 15:27 config.js
    drwxr-xr-x    2 app      app           4096 Jan 16 18:59 dist
    drwxr-xr-x  659 app      app          24576 Jan 16 18:40 node_modules
    -rw-r--r--    1 root     root        354385 Jan 16 15:27 package-lock.json
    -rw-r--r--    1 root     root          1693 Jan 16 15:27 package.json
    drwxr-xr-x    5 root     root          4096 Jan 16 15:27 src
    drwxr-xr-x    2 root     root          4096 Jan 16 15:27 util
    -rw-r--r--    1 root     root          1708 Jan 16 15:27 webpack.config.js
    /usr/src/app $ cd dist
    /usr/src/app/dist $ ls
    0ab54153eeeca0ce03978cc463b257f7.woff2  9c74e172f87984c48ddf5c8108cabe67.png    bff6c47a9da5c7cfa2e8a552e2df3a78.svg    index.html
    13db00b7a34fee4d819ab7f9838cc428.eot    a046592bac8f2fd96e994733faf3858c.woff   c5ebe0b32dc1b5cc449a76c4204d13bb.ttf    main.css
    701ae6abd4719e9c2ada3535a497b341.eot    a1a749e89f578a49306ec2b055c073da.svg    cd6c777f1945164224dee082abaea03a.woff2  main.js
    82f60bd0b94a1ed68b1e6e309ce2e8c3.svg    a3e2211dddcba197b5bbf2aa9d5d9a9a.svg    e8c322de9658cbeb8a774b6624167c2c.woff2  vendors~main-1.css
    8e3c7f5520f5ae906c6cf6d7f3ddcd19.eot    ad97afd3337e8cda302d10ff5a4026b8.ttf    ef60a4f6c25ef7f39f2d25a748dbecfe.woff   vendors~main.js
    962a1bf31c081691065fe333d9fa8105.svg    b87b9ba532ace76ae9f6edfe9f72ded2.ttf    faff92145777a3cbaf8e7367b4807987.woff

See if this gets squeezed due multi-stage build copying the stage where the dist-directory is built.
    $ docker-compose up
    /usr/lib/python2.7/dist-packages/requests/__init__.py:80: RequestsDependencyWarning: urllib3 (1.22) or chardet (2.1.1) doesn't match a supported version!
    RequestsDependencyWarning)
    Creating network "part304_proxyfrontnw" with driver "bridge"
    Creating network "part304_proxybacknw" with driver "bridge"
    Creating network "part304_redis" with driver "bridge"
    Creating postgres304c ... 
    Creating redis304c ... 
    Creating adminer304c ... 
    Creating redis304c
    Creating postgres304c
    Creating redis304c ... done
    Creating backend304c ... 
    Creating backend304c ... done
    Creating frontend304c ... 
    Creating frontend304c ... done
    Creating nginx304c ... 
    Creating nginx304c ... done
    Attaching to postgres304c, adminer304c, redis304c, backend304c, frontend304c, nginx304c
    adminer304c | [Thu Jan 16 18:58:35 2020] PHP 7.4.1 Development Server (http://[::]:8080) started
    postgres304c | 
    postgres304c | PostgreSQL Database directory appears to contain a database; Skipping initialization
    postgres304c | 
    redis304c   | 1:C 16 Jan 2020 18:58:36.839 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
    redis304c   | 1:C 16 Jan 2020 18:58:36.839 # Redis version=5.0.7, bits=64, commit=00000000, modified=0, pid=1, just started
    backend304c | 
    backend304c | > backend-example-docker@1.0.0 start /usr/src/app
    backend304c | > cross-env NODE_ENV=production node index.js
    backend304c | 
    postgres304c | 2020-01-16 18:58:34.875 UTC [1] LOG:  starting PostgreSQL 12.1 (Debian 12.1-1.pgdg100+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 8.3.0-6) 8.3.0, 64-bit
    postgres304c | 2020-01-16 18:58:34.875 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
    postgres304c | 2020-01-16 18:58:34.875 UTC [1] LOG:  listening on IPv6 address "::", port 5432
    backend304c | Browserslist: caniuse-lite is outdated. Please run next command `npm update caniuse-lite browserslist`
    postgres304c | 2020-01-16 18:58:34.891 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
    redis304c   | 1:C 16 Jan 2020 18:58:36.839 # Configuration loaded
    backend304c | Thu, 16 Jan 2020 18:58:41 GMT sequelize deprecated String based operators are now deprecated. Please use Symbol based operators for better security, read more at http://docs.sequelizejs.com/manual/tutorial/querying.html#operators at node_modules/sequelize/lib/sequelize.js:242:13
    postgres304c | 2020-01-16 18:58:34.929 UTC [25] LOG:  database system was shut down at 2020-01-16 18:57:53 UTC
    redis304c   | 1:M 16 Jan 2020 18:58:36.840 * Running mode=standalone, port=6379.
    postgres304c | 2020-01-16 18:58:34.940 UTC [1] LOG:  database system is ready to accept connections
    backend304c | Testing database connection
    redis304c   | 1:M 16 Jan 2020 18:58:36.841 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
    redis304c   | 1:M 16 Jan 2020 18:58:36.841 # Server initialized
    redis304c   | 1:M 16 Jan 2020 18:58:36.841 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
    redis304c   | 1:M 16 Jan 2020 18:58:36.841 # WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.
    backend304c | Redis connection, initating..
    backend304c | Trying to set cache
    redis304c   | 1:M 16 Jan 2020 18:58:36.841 * DB loaded from append only file: 0.000 seconds
    redis304c   | 1:M 16 Jan 2020 18:58:36.841 * Ready to accept connections
    backend304c | Cache set successfully
    backend304c | Started on port 8000
    nginx304c   | 2020/01/16 18:58:41 [warn] 1#1: the "user" directive makes sense only if the master process runs with super-user privileges, ignored in /etc/nginx/nginx.conf:1
    nginx304c   | nginx: [warn] the "user" directive makes sense only if the master process runs with super-user privileges, ignored in /etc/nginx/nginx.conf:1
    frontend304c | 
    frontend304c | > frontend-example-docker@1.0.0 start /usr/src/app
    frontend304c | > webpack --mode production && serve -s -l 5000 dist
    frontend304c | 
    nginx304c   | 2020/01/16 18:58:41 [notice] 1#1: using the "epoll" event method
    nginx304c   | 2020/01/16 18:58:41 [notice] 1#1: nginx/1.17.7
    nginx304c   | 2020/01/16 18:58:41 [notice] 1#1: built by gcc 8.3.0 (Alpine 8.3.0) 
    nginx304c   | 2020/01/16 18:58:41 [notice] 1#1: OS: Linux 4.15.0-74-generic
    nginx304c   | 2020/01/16 18:58:41 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
    nginx304c   | 2020/01/16 18:58:41 [notice] 1#1: start worker processes
    nginx304c   | 2020/01/16 18:58:41 [notice] 1#1: start worker process 6
    backend304c | Executing (default): SELECT 1+1 AS result
    backend304c | Connection ok, syncing database with model.
    backend304c | Executing (default): CREATE TABLE IF NOT EXISTS "messages" ("id"   SERIAL , "body" VARCHAR(255), "createdAt" TIMESTAMP WITH TIME ZONE NOT NULL, "updatedAt" TIMESTAMP WITH TIME ZONE NOT NULL, PRIMARY KEY ("id"));
    backend304c | Executing (default): SELECT i.relname AS name, ix.indisprimary AS primary, ix.indisunique AS unique, ix.indkey AS indkey, array_agg(a.attnum) as column_indexes, array_agg(a.attname) AS column_names, pg_get_indexdef(ix.indexrelid) AS definition FROM pg_class t, pg_class i, pg_index ix, pg_attribute a WHERE t.oid = ix.indrelid AND i.oid = ix.indexrelid AND a.attrelid = t.oid AND t.relkind = 'r' and t.relname = 'messages' GROUP BY i.relname, ix.indexrelid, ix.indisprimary, ix.indisunique, ix.indkey ORDER BY i.relname;
    backend304c | Database connection established!
    frontend304c | Browserslist: caniuse-lite is outdated. Please run next command `npm update caniuse-lite browserslist`
    frontend304c | Browserslist: caniuse-lite is outdated. Please run next command `npm update`
    frontend304c | Hash: 1bcb2b1097ed8320432f
    frontend304c | Version: webpack 4.29.6
    frontend304c | Time: 36796ms
    frontend304c | Built at: 01/16/2020 6:59:21 PM
    frontend304c |                                  Asset       Size  Chunks                    Chunk Names
    frontend304c | 0ab54153eeeca0ce03978cc463b257f7.woff2   39.2 KiB          [emitted]         
    frontend304c |   13db00b7a34fee4d819ab7f9838cc428.eot   96.3 KiB          [emitted]         
    frontend304c |   701ae6abd4719e9c2ada3535a497b341.eot   30.4 KiB          [emitted]         
    frontend304c |   82f60bd0b94a1ed68b1e6e309ce2e8c3.svg    105 KiB          [emitted]         
    frontend304c |   8e3c7f5520f5ae906c6cf6d7f3ddcd19.eot    104 KiB          [emitted]         
    frontend304c |   962a1bf31c081691065fe333d9fa8105.svg    382 KiB          [emitted]  [big]  
    frontend304c |   9c74e172f87984c48ddf5c8108cabe67.png   27.5 KiB          [emitted]         
    frontend304c |  a046592bac8f2fd96e994733faf3858c.woff   62.2 KiB          [emitted]         
    frontend304c |   a1a749e89f578a49306ec2b055c073da.svg    496 KiB          [emitted]  [big]  
    frontend304c |   a3e2211dddcba197b5bbf2aa9d5d9a9a.svg   3.19 KiB          [emitted]         
    frontend304c |   ad97afd3337e8cda302d10ff5a4026b8.ttf   30.2 KiB          [emitted]         
    frontend304c |   b87b9ba532ace76ae9f6edfe9f72ded2.ttf    103 KiB          [emitted]         
    frontend304c |   bff6c47a9da5c7cfa2e8a552e2df3a78.svg    3.2 KiB          [emitted]         
    frontend304c |   c5ebe0b32dc1b5cc449a76c4204d13bb.ttf   96.1 KiB          [emitted]         
    frontend304c | cd6c777f1945164224dee082abaea03a.woff2     12 KiB          [emitted]         
    frontend304c | e8c322de9658cbeb8a774b6624167c2c.woff2   53.2 KiB          [emitted]         
    frontend304c |  ef60a4f6c25ef7f39f2d25a748dbecfe.woff   14.4 KiB          [emitted]         
    frontend304c |  faff92145777a3cbaf8e7367b4807987.woff   49.3 KiB          [emitted]         
    frontend304c |                             index.html  454 bytes          [emitted]         
    frontend304c |                               main.css  127 bytes       0  [emitted]         main
    frontend304c |                                main.js   19.1 KiB       0  [emitted]         main
    frontend304c |                     vendors~main-1.css    602 KiB       1  [emitted]  [big]  vendors~main
    frontend304c |                        vendors~main.js    328 KiB       1  [emitted]  [big]  vendors~main
    frontend304c | Entrypoint main [big] = vendors~main-1.css vendors~main.js main.css main.js
    frontend304c |   [7] ./node_modules/semantic-ui-react/dist/es/lib/index.js + 1 modules 2.94 KiB {1} [built]
    frontend304c |       |    2 modules
    frontend304c |  [51] ./node_modules/semantic-ui-react/dist/es/elements/Icon/Icon.js + 1 modules 6.22 KiB {1} [built]
    frontend304c |       |    2 modules
    frontend304c |  [80] ./node_modules/react-redux/es/index.js + 19 modules 36.2 KiB {1} [built]
    frontend304c |       |    20 modules
    frontend304c |  [93] ./node_modules/semantic-ui-react/dist/es/elements/Label/Label.js + 2 modules 10.6 KiB {1} [built]
    frontend304c |       |    3 modules
    frontend304c |  [94] (webpack)/buildin/global.js 472 bytes {1} [built]
    frontend304c | [246] ./src/assets/toscalogo_color.svg 82 bytes {0} [built]
    frontend304c | [247] ./src/assets/toscalogo_grayscale.svg 82 bytes {0} [built]
    frontend304c | [266] multi @babel/polyfill ./src 40 bytes {0} [built]
    frontend304c | [446] (webpack)/buildin/harmony-module.js 573 bytes {1} [built]
    frontend304c | [448] ./src/assets/custom.css 39 bytes {0} [built]
    frontend304c | [585] ./src/index.js + 18 modules 37.8 KiB {0} [built]
    frontend304c |       | ./src/index.js 569 bytes [built]
    frontend304c |       | ./src/util/store.js 481 bytes [built]
    frontend304c |       | ./util/common.js 117 bytes [built]
    frontend304c |       | ./src/util/apiConnection.js 4.7 KiB [built]
    frontend304c |       | ./src/util/redux/index.js 219 bytes [built]
    frontend304c |       | ./src/util/redux/messageReducer.js 1.76 KiB [built]
    frontend304c |       | ./src/util/redux/simpleReducer.js 1.47 KiB [built]
    frontend304c |       | ./src/util/common.js 221 bytes [built]
    frontend304c |       |     + 11 hidden modules
    frontend304c | [586] ./node_modules/semantic-ui-react/dist/es/elements/Button/Button.js + 3 modules 17.7 KiB {1} [built]
    frontend304c |       |    4 modules
    frontend304c | [594] ./node_modules/react-router-dom/es/BrowserRouter.js + 12 modules 41 KiB {1} [built]
    frontend304c |       |    13 modules
    frontend304c | [596] ./node_modules/react-router-dom/es/Switch.js + 1 modules 3.35 KiB {1} [built]
    frontend304c |       |    2 modules
    frontend304c | [597] ./node_modules/react-router-dom/es/Route.js + 1 modules 5.9 KiB {1} [built]
    frontend304c |       |    2 modules
    frontend304c |     + 971 hidden modules
    frontend304c | 
    frontend304c | WARNING in asset size limit: The following asset(s) exceed the recommended size limit (244 KiB).
    frontend304c | This can impact web performance.
    frontend304c | Assets: 
    frontend304c |   962a1bf31c081691065fe333d9fa8105.svg (382 KiB)
    frontend304c |   a1a749e89f578a49306ec2b055c073da.svg (496 KiB)
    frontend304c |   vendors~main-1.css (602 KiB)
    frontend304c |   vendors~main.js (328 KiB)
    frontend304c | 
    frontend304c | WARNING in entrypoint size limit: The following entrypoint(s) combined asset size exceeds the recommended limit (244 KiB). This can impact web performance.
    frontend304c | Entrypoints:
    frontend304c |   main (949 KiB)
    frontend304c |       vendors~main-1.css
    frontend304c |       vendors~main.js
    frontend304c |       main.css
    frontend304c |       main.js
    frontend304c | 
    frontend304c | 
    frontend304c | WARNING in webpack performance recommendations: 
    frontend304c | You can limit the size of your bundles by using import() or require.ensure to lazy load some parts of your application.
    frontend304c | For more info visit https://webpack.js.org/guides/code-splitting/
    frontend304c | Child html-webpack-plugin for "index.html":
    frontend304c |      1 asset
    frontend304c |     Entrypoint undefined = index.html
    frontend304c |     [2] (webpack)/buildin/global.js 472 bytes {0} [built]
    frontend304c |     [3] (webpack)/buildin/module.js 497 bytes {0} [built]
    frontend304c |         + 2 hidden modules
    frontend304c | Child mini-css-extract-plugin node_modules/css-loader/index.js!node_modules/semantic-ui-css/semantic.min.css:
    frontend304c |     Entrypoint mini-css-extract-plugin = *
    frontend304c |        19 modules
    frontend304c | Child mini-css-extract-plugin node_modules/css-loader/index.js!src/assets/custom.css:
    frontend304c |     Entrypoint mini-css-extract-plugin = *
    frontend304c |     [0] ./node_modules/css-loader!./src/assets/custom.css 340 bytes {0} [built]
    frontend304c |         + 1 hidden module
    frontend304c | UPDATE AVAILABLE The latest version of `serve` is 11.3.0
    frontend304c | INFO: Accepting connections at http://localhost:5000
    

### multistage built frontend

view to frontend service in shell, see dist and node_modules only.


    $ docker container ps | grep frontend
    9868150797c3        frontend305i        "/bin/sh -c 'serve -…"   3 minutes ago       Up 3 minutes        5000/tcp                       frontend305c
    paavo@silber:~/defa/defa_docker_hw/part3.04$ docker exec -it 9868150797c3 /bin/sh
    /usr/src/app $ ls -la
    total 392
    drwxrwxr-x    1 app      dockerap      4096 Jan 16 21:26 .
    drwxr-xr-x    1 root     root          4096 Jan 16 18:33 ..
    drwxr-xr-x    2 app      dockerap      4096 Jan 16 21:26 dist
    drwxr-xr-x  659 app      dockerap     24576 Jan 16 21:26 node_modules
    -rw-r--r--    1 app      dockerap    354385 Jan 16 15:27 package-lock.json
    -rw-r--r--    1 app      dockerap      1693 Jan 16 15:27 package.json
    /usr/src/app $ ls -al dist
    total 2704
    drwxr-xr-x    2 app      dockerap      4096 Jan 16 21:26 .
    drwxrwxr-x    1 app      dockerap      4096 Jan 16 21:26 ..
    -rw-r--r--    1 app      dockerap     40148 Jan 16 21:26 0ab54153eeeca0ce03978cc463b257f7.woff2
    -rw-r--r--    1 app      dockerap     98640 Jan 16 21:26 13db00b7a34fee4d819ab7f9838cc428.eot
    -rw-r--r--    1 app      dockerap     31156 Jan 16 21:26 701ae6abd4719e9c2ada3535a497b341.eot
    -rw-r--r--    1 app      dockerap    107201 Jan 16 21:26 82f60bd0b94a1ed68b1e6e309ce2e8c3.svg
    -rw-r--r--    1 app      dockerap    106004 Jan 16 21:26 8e3c7f5520f5ae906c6cf6d7f3ddcd19.eot
    -rw-r--r--    1 app      dockerap    390837 Jan 16 21:26 962a1bf31c081691065fe333d9fa8105.svg
    -rw-r--r--    1 app      dockerap     28123 Jan 16 21:26 9c74e172f87984c48ddf5c8108cabe67.png
    -rw-r--r--    1 app      dockerap     63728 Jan 16 21:26 a046592bac8f2fd96e994733faf3858c.woff
    -rw-r--r--    1 app      dockerap    507628 Jan 16 21:26 a1a749e89f578a49306ec2b055c073da.svg
    -rw-r--r--    1 app      dockerap      3269 Jan 16 21:26 a3e2211dddcba197b5bbf2aa9d5d9a9a.svg
    -rw-r--r--    1 app      dockerap     30928 Jan 16 21:26 ad97afd3337e8cda302d10ff5a4026b8.ttf
    -rw-r--r--    1 app      dockerap    105784 Jan 16 21:26 b87b9ba532ace76ae9f6edfe9f72ded2.ttf
    -rw-r--r--    1 app      dockerap      3273 Jan 16 21:26 bff6c47a9da5c7cfa2e8a552e2df3a78.svg
    -rw-r--r--    1 app      dockerap     98404 Jan 16 21:26 c5ebe0b32dc1b5cc449a76c4204d13bb.ttf
    -rw-r--r--    1 app      dockerap     12240 Jan 16 21:26 cd6c777f1945164224dee082abaea03a.woff2
    -rw-r--r--    1 app      dockerap     54488 Jan 16 21:26 e8c322de9658cbeb8a774b6624167c2c.woff2
    -rw-r--r--    1 app      dockerap     14712 Jan 16 21:26 ef60a4f6c25ef7f39f2d25a748dbecfe.woff
    -rw-r--r--    1 app      dockerap     50524 Jan 16 21:26 faff92145777a3cbaf8e7367b4807987.woff
    -rw-r--r--    1 app      dockerap       454 Jan 16 21:26 index.html
    -rw-r--r--    1 app      dockerap       127 Jan 16 21:26 main.css
    -rw-r--r--    1 app      dockerap     19602 Jan 16 21:26 main.js
    -rw-r--r--    1 app      dockerap    616952 Jan 16 21:26 vendors~main-1.css
    -rw-r--r--    1 app      dockerap    335561 Jan 16 21:26 vendors~main.js

### startup of multistage built frontend

Only one row for frontend start - so pretty clean start.

    $ docker-compose up
    /usr/lib/python2.7/dist-packages/requests/__init__.py:80: RequestsDependencyWarning: urllib3 (1.22) or chardet (2.1.1) doesn't match a supported version!
    RequestsDependencyWarning)
    Creating network "part305_proxyfrontnw" with driver "bridge"
    Creating network "part305_proxybacknw" with driver "bridge"
    Creating network "part305_redis" with driver "bridge"
    Creating postgres305c ... 
    Creating redis305c ... 
    Creating adminer305c ... 
    Creating postgres305c
    Creating adminer305c
    Creating postgres305c ... done
    Creating backend305c ... 
    Creating backend305c ... done
    Creating frontend305c ... 
    Creating frontend305c ... done
    Creating nginx305c ... 
    Creating nginx305c ... done
    Attaching to redis305c, adminer305c, postgres305c, backend305c, frontend305c, nginx305c
    redis305c   | 1:C 16 Jan 2020 21:27:16.256 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
    redis305c   | 1:C 16 Jan 2020 21:27:16.256 # Redis version=5.0.7, bits=64, commit=00000000, modified=0, pid=1, just started
    redis305c   | 1:C 16 Jan 2020 21:27:16.256 # Configuration loaded
    redis305c   | 1:M 16 Jan 2020 21:27:16.260 * Running mode=standalone, port=6379.
    redis305c   | 1:M 16 Jan 2020 21:27:16.260 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
    redis305c   | 1:M 16 Jan 2020 21:27:16.260 # Server initialized
    redis305c   | 1:M 16 Jan 2020 21:27:16.260 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
    redis305c   | 1:M 16 Jan 2020 21:27:16.260 # WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.
    adminer305c | [Thu Jan 16 21:27:17 2020] PHP 7.4.1 Development Server (http://[::]:8080) started
    redis305c   | 1:M 16 Jan 2020 21:27:16.260 * DB loaded from append only file: 0.000 seconds
    redis305c   | 1:M 16 Jan 2020 21:27:16.260 * Ready to accept connections
    backend305c | 
    backend305c | > backend-example-docker@1.0.0 start /usr/src/app
    backend305c | > cross-env NODE_ENV=production node index.js
    backend305c | 
    backend305c | Browserslist: caniuse-lite is outdated. Please run next command `npm update caniuse-lite browserslist`
    postgres305c | 
    postgres305c | PostgreSQL Database directory appears to contain a database; Skipping initialization
    postgres305c | 
    frontend305c | INFO: Accepting connections at http://localhost:5000
    backend305c | Thu, 16 Jan 2020 21:27:23 GMT sequelize deprecated String based operators are now deprecated. Please use Symbol based operators for better security, read more at http://docs.sequelizejs.com/manual/tutorial/querying.html#operators at node_modules/sequelize/lib/sequelize.js:242:13
    nginx305c   | 2020/01/16 21:27:23 [warn] 1#1: the "user" directive makes sense only if the master process runs with super-user privileges, ignored in /etc/nginx/nginx.conf:1
    postgres305c | 2020-01-16 21:27:18.519 UTC [1] LOG:  starting PostgreSQL 12.1 (Debian 12.1-1.pgdg100+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 8.3.0-6) 8.3.0, 64-bit
    nginx305c   | nginx: [warn] the "user" directive makes sense only if the master process runs with super-user privileges, ignored in /etc/nginx/nginx.conf:1
    backend305c | Testing database connection
    backend305c | Redis connection, initating..
    backend305c | Trying to set cache
    postgres305c | 2020-01-16 21:27:18.521 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
    postgres305c | 2020-01-16 21:27:18.521 UTC [1] LOG:  listening on IPv6 address "::", port 5432
    postgres305c | 2020-01-16 21:27:18.554 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
    nginx305c   | 2020/01/16 21:27:23 [notice] 1#1: using the "epoll" event method
    backend305c | Cache set successfully
    nginx305c   | 2020/01/16 21:27:23 [notice] 1#1: nginx/1.17.7
    nginx305c   | 2020/01/16 21:27:23 [notice] 1#1: built by gcc 8.3.0 (Alpine 8.3.0) 
    postgres305c | 2020-01-16 21:27:18.600 UTC [26] LOG:  database system was interrupted; last known up at 2020-01-16 21:21:02 UTC
    backend305c | Started on port 8000
    nginx305c   | 2020/01/16 21:27:23 [notice] 1#1: OS: Linux 4.15.0-74-generic
    nginx305c   | 2020/01/16 21:27:23 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
    postgres305c | 2020-01-16 21:27:18.760 UTC [26] LOG:  database system was not properly shut down; automatic recovery in progress
    backend305c | Executing (default): SELECT 1+1 AS result
    nginx305c   | 2020/01/16 21:27:23 [notice] 1#1: start worker processes
    postgres305c | 2020-01-16 21:27:18.783 UTC [26] LOG:  redo starts at 0/1660BA0
    backend305c | Connection ok, syncing database with model.
    nginx305c   | 2020/01/16 21:27:23 [notice] 1#1: start worker process 7
    postgres305c | 2020-01-16 21:27:18.785 UTC [26] LOG:  invalid record length at 0/1660EE8: wanted 24, got 0
    backend305c | Executing (default): CREATE TABLE IF NOT EXISTS "messages" ("id"   SERIAL , "body" VARCHAR(255), "createdAt" TIMESTAMP WITH TIME ZONE NOT NULL, "updatedAt" TIMESTAMP WITH TIME ZONE NOT NULL, PRIMARY KEY ("id"));
    postgres305c | 2020-01-16 21:27:18.785 UTC [26] LOG:  redo done at 0/1660EB0
    backend305c | Executing (default): SELECT i.relname AS name, ix.indisprimary AS primary, ix.indisunique AS unique, ix.indkey AS indkey, array_agg(a.attnum) as column_indexes, array_agg(a.attname) AS column_names, pg_get_indexdef(ix.indexrelid) AS definition FROM pg_class t, pg_class i, pg_index ix, pg_attribute a WHERE t.oid = ix.indrelid AND i.oid = ix.indexrelid AND a.attrelid = t.oid AND t.relkind = 'r' and t.relname = 'messages' GROUP BY i.relname, ix.indexrelid, ix.indisprimary, ix.indisunique, ix.indkey ORDER BY i.relname;
    postgres305c | 2020-01-16 21:27:18.891 UTC [1] LOG:  database system is ready to accept connections
    backend305c | Database connection established!
    nginx305c   | 2020/01/16 21:28:24 [info] 7#7: *1 client closed connection while waiting for request, client: 172.30.0.1, server: 0.0.0.0:8080
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:24 +0000] "GET / HTTP/1.1" 200 454 "-" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:25 +0000] "GET /main.css HTTP/1.1" 200 127 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:25 +0000] "GET /main.js HTTP/1.1" 200 4680 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:25 +0000] "GET /vendors~main.js HTTP/1.1" 200 106208 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:25 +0000] "GET /vendors~main-1.css HTTP/1.1" 200 103197 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:25 +0000] "GET /a3e2211dddcba197b5bbf2aa9d5d9a9a.svg HTTP/1.1" 200 1524 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:25 +0000] "GET /favicon.ico HTTP/1.1" 200 454 "-" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:27 +0000] "GET /api/ping HTTP/1.1" 200 4 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    backend305c | Got from redis pong
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:27 +0000] "GET /api/slow HTTP/1.1" 200 4 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:35 +0000] "POST /api/messages HTTP/1.1" 201 7 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    backend305c | Executing (default): INSERT INTO "messages" ("id","body","createdAt","updatedAt") VALUES (DEFAULT,'excercise 3.05','2020-01-16 21:28:35.220 +00:00','2020-01-16 21:28:35.220 +00:00') RETURNING *;
    backend305c | Executing (default): SELECT "id", "body", "createdAt", "updatedAt" FROM "messages" AS "message";
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:37 +0000] "GET /api/messages HTTP/1.1" 200 620 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"
    nginx305c   | 172.30.0.1 - - [16/Jan/2020:21:28:39 +0000] "GET /api/ping HTTP/1.1" 304 0 "http://localhost/" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0"



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