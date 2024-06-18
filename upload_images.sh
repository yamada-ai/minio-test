#!/bin/sh


# MinIO クライアントを設定
mc alias set myminio http://localhost:9000 minio minio123

# バケットを作成
mc mb myminio/img

# 画像をアップロード
mc cp /docker-entrypoint-initaws.d/img/* myminio/img/
