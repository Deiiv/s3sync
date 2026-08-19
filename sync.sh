#!/bin/ash

set -e

echo "$(date) - Starting sync job with command aws s3 sync /data s3://$BUCKET$BUCKET_PATH" --cli-read-timeout 0 --cli-connect-timeout 0 --exclude ".ppignore" --exclude "#recycle/*" --exclude "*/@eaDir/*" --exclude "*/WhatsApp Voice Notes/*" --exclude "*/WhatsApp Animated Gifs/*" --exclude "*/WhatsApp Audio/*" --exclude "*/WhatsApp Stickers/*" --exclude "*/WhatsApp Documents/*" --exclude "*/Sent/*" --exclude "*/.thumbnails/*"

aws s3 sync /data s3://"$BUCKET""$BUCKET_PATH" --exclude ".ppignore" --exclude ".DS_Store" --exclude "#recycle/*" --exclude "*/@eaDir/*" --exclude "*/WhatsApp Voice Notes/*" --exclude "*/WhatsApp Animated Gifs/*" --exclude "*/WhatsApp Audio/*" --exclude "*/WhatsApp Stickers/*" --exclude "*/WhatsApp Documents/*" --exclude "*/Sent/*" --exclude "*/.thumbnails/*" # && mosquitto_pub -h $MQTT_HOST -u $MQTT_USER -P $MQTT_PW -t $MQTT_TOPIC -m "Healthy as of $(date '+%d-%m-%Y')"

echo "$(date) - End of sync job"
