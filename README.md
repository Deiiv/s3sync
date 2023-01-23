# AWS S3 sync docker container
A cron based s3 sync container

docker build -t deiiv/s3sync:latest .
docker push deiiv/s3sync:latest

# Sample docker-compose

```yaml
---
version: "2.1"
services:
  s3sync:
    image: deiiv/s3sync
    container_name: s3sync
    # defaults to "0 7 * * *", currently has a bug where doesn't override
    build:
      args:
        - CRON_SCHEDULE="0 7 * * *"
    environment:
      - PUID=
      - PGID=
      - AWS_ACCESS_KEY_ID=
      - AWS_SECRET_ACCESS_KEY=
      - AWS_DEFAULT_REGION=
      - BUCKET=
      - BUCKET_PATH=/
      - PARAMS=                        #currently not working, arrays not support in bin/ash with alpine - OPTIONAL, must be an array, eg: PARAMS=('--exclude' '.somefile' '--exclude' 'somefolder/*')
      - MQTT_HOST=
      - MQTT_USER=
      - MQTT_PW=
      - MQTT_TOPIC=
    volumes:
      - /your/data/to/sync:/data
    restart: unless-stopped
```
