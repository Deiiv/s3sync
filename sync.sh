#!/bin/ash

set -e

echo "$(date) - Starting sync job with command aws s3 sync /data s3://$BUCKET$BUCKET_PATH $PARAMS"

aws s3 sync /data s3://$BUCKET$BUCKET_PATH $PARAMS

echo "$(date) - End of sync job"
