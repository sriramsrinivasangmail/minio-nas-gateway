#!/bin/sh

scriptdir=`dirname $0`
cd ${scriptdir}
scriptdir=`pwd`

datadir=${scriptdir}/data
mkdir -p ${datadir}

export MINIO_ETCD_ENDPOINTS=http://0.0.0.0:12379
export MINIO_ACCESS_KEY=minio
export MINIO_SECRET_KEY=minio123
nohup ./minio gateway nas --address 0.0.0.0:9001  ${datadir}  > minio.log 2>&1 &
echo $! > minio.pid
