#!/bin/ash

set -e

echo "$(date) - Starting sync job with command aws s3 sync /data s3://$BUCKET$BUCKET_PATH" --exclude ".ppignore" --exclude "#recycle/*" --exclude "*/@eaDir/*" --exclude "*/WhatsApp Voice Notes/*" --exclude "*/WhatsApp Animated Gifs/*" --exclude "*/WhatsApp Audio/*" --exclude "*/WhatsApp Stickers/*" --exclude "*/WhatsApp Documents/*"

aws s3 sync /data s3://"$BUCKET""$BUCKET_PATH" --exclude ".ppignore" --exclude "#recycle/*" --exclude "*/@eaDir/*" --exclude "*/WhatsApp Voice Notes/*" --exclude "*/WhatsApp Animated Gifs/*" --exclude "*/WhatsApp Audio/*" --exclude "*/WhatsApp Stickers/*" --exclude "*/WhatsApp Documents/*"

echo "$(date) - End of sync job"
