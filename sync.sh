#!/bin/ash

set -e

echo "$(date) - Starting sync job to $BUCKET$BUCKET_PATH"

aws s3 sync /data s3://$BUCKET$BUCKET_PATH $PARAMS

echo "$(date) - End of sync job"
