#This is docker test
*** 
```
#!/bin/bash
images=`kubeadm config images list`
num=$[RANDOM%7+1]
i=`echo ${images}|cut -d" " -f${num}`
echo "FROM $i" > Dockerfile
echo "MAINTAINER dongs365 `date`" >> Dockerfile
git add .
git commit -m ":whale: `date`"
git push
```
