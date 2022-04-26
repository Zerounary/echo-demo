#! /bin/bash

# kill server pid if exists
if test -n "$(pidof echo-demo)"; then
  echo "Killing server" 
  kill -9 $(pidof echo-demo)
fi
# 避免nohup命令不终止
echo "restart server"
nohup /home/app/./echo-demo >/dev/null 2>&1 &
echo "restart server done"