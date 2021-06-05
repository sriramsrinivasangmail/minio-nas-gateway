docker rm -f nas-s3

docker run -p 9000:9000 -d --name nas-s3 \
 -e "MINIO_ACCESS_KEY=minio" \
 -e "MINIO_SECRET_KEY=minio123" \
 -v /home/sriram/work/minio-test/data:/data-mnt \
 minio/minio gateway nas /data-mnt

