#! /bin/bash

i=`curl -X -GET http://rancher-metadata/latest/self/container/create_index`
if [ $i = 1 ]; then
  exec ./scollector -f cadvisor,cadvisor_host,rancher -h bosun:8070
else then
  exec ./scollector -f cadvisor,cadvisor_host -h bosun:8070
fi