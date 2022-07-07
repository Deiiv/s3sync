#!/bin/ash

set -e

echo "$(date) - Starting sync job with command aws s3 sync /data s3://$BUCKET$BUCKET_PATH" --exclude ".ppignore" --exclude "#recycle/*" --exclude "*/@eaDir/*"

aws s3 sync /data s3://"$BUCKET""$BUCKET_PATH" --exclude ".ppignore" --exclude "#recycle/*" --exclude "*/@eaDir/*"

echo "$(date) - End of sync job"
