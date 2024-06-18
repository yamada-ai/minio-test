#!/bin/sh

# MinIOが起動するまで待機
until nc -z minio 9000; do
  echo "Waiting for minio..."
  sleep 1
done

echo "Minio is up and running"
