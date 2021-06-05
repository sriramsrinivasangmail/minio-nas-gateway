

##Introduction

In this example, we will see how to use minio to serve nfs mount directories as buckets and enable multiple users access to each bucket.

For reference, see:

https://docs.min.io/docs/minio-gateway-for-nas.html


https://docs.minio.io/docs/how-to-secure-access-to-minio-server-with-tls.html


https://docs.min.io/docs/minio-multi-user-quickstart-guide.html 

 
## mount an nfs volume

we will create a 'data' sub-directory - under which we will mount the NFS subdirectory

for example 

```
mkdir -p `pwd`/data/remote-nfs-vol

sudo mount zen-dev-bart-master:/storage/nfs/sample-vol `pwd`/data/remote-nfs-vol

```

## starting minio


We will run minio in nas gateway mode and etcd to grant access to specific users

Use: `run-etcd.sh` to startup etcd in a Docker container

and

`run-minio.sh` to startup minio natively in nas gateway mode.

stop-etcd.sh and stop-minio.sh will terminate the processes/docker container

