#!/bin/sh

export MINIO_ETCD_ENDPOINTS=http://localhost:2379
export MINIO_ACCESS_KEY=minio
export MINIO_SECRET_KEY=minio123
nohup ./minio gateway nas --address 0.0.0.0:9001  /home/sriram/work/minio-test/data > minio.log 2>&1 &
