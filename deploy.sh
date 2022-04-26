#! /bin/bash

kill -9 $(lsof -t -i:9000)
# 避免nohup命令不终止
nohup /home/app/./echo-demo >/dev/null 2>&1 &