#!/bin/sh

if [ -f minio.pid ];
then
  kill -9 `cat minio.pid`
fi
rm -f minio.pid


