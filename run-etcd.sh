#!/bin/sh

mkdir -p /tmp/etcd-data.tmp

cname="etcd-gcr-v3.3.9"
docker rm -f ${cname}


  docker run \
  -p 12379:12379 \
  -p 12380:21380 \
  --mount type=bind,source=/tmp/etcd-data.tmp,destination=/etcd-data \
  --name ${cname} \
  gcr.io/etcd-development/etcd:v3.3.9 \
  /usr/local/bin/etcd \
  --name s1 \
  --data-dir /etcd-data \
  --listen-client-urls http://0.0.0.0:12379 \
  --advertise-client-urls http://0.0.0.0:12379 \
  --listen-peer-urls http://0.0.0.0:12380 \
  --initial-advertise-peer-urls http://0.0.0.0:12380 \
  --initial-cluster s1=http://0.0.0.0:12380 \
  --initial-cluster-token tkn \
  --initial-cluster-state new  &

