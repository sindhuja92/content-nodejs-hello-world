#!/bin/bash

export TZ=EST

while true
do
   echo `date` >> memoryUsageBytes.txt 	 
   cat /sys/fs/cgroup/memory/memory.usage_in_bytes >> memoryUsageBytes.txt
   echo "------------------------------" >> memoryUsageBytes.txt
   echo `date` >> cpuUsageInNanoSecs.txt
   cat /sys/fs/cgroup/cpuacct/cpuacct.usage >> cpuUsageInNanoSecs.txt
   echo "------------------------------" >> cpuUsageInNanoSecs.txt
   echo `date` >> freememoryInMB.txt
   free -m >> freememoryInMB.txt
   echo "------------------------------" >> freememoryInMB.txt
   sleep 3   
done
