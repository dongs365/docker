#This is a docker test shell command
*** 
```
#!/bin/bash
cd /data/docker
images=`kubeadm config images list`
num=$[RANDOM%7+1]
i=`echo ${images}|cut -d" " -f${num}`
echo "FROM $i" > Dockerfile
echo "MAINTAINER dongs365 `date`" >> Dockerfile
git add .
git commit -m ":whale: `date`"
git push
```
