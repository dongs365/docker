#This is docker test
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
*/5 * * * * /bin/bash /data/docker/au.sh >/dev/null 2>&1
