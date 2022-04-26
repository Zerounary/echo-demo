#! /bin/bash

kill -9 $(lsof -t -i:9000)
nohup /home/app/./echo-demo &