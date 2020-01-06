#!/bin/sh
echo "Input website fqdn like helsinki.fi :";
read website;
echo "Searching..";
sleep 1;
curl http://$website;
#curl http://helsinki.fi;

