# AWS S3 sync docker container
An up to date cron s3 sync container, using the official aws cli image.

# Sample docker-compose

```yaml
---
version: "2.1"
services:
  s3sync:
    image: deiiv/s3sync
    container_name: s3sync
    environment:
      - PUID=
      - PGID=
      - AWS_ACCESS_KEY_ID=
      - AWS_SECRET_ACCESS_KEY=
      - AWS_DEFAULT_REGION=
      - BUCKET=
      - BUCKET_PATH=/
      - CRON_SCHEDULE=0 1 * * *
    volumes:
      - /your/data/to/sync:/data
    restart: unless-stopped
```
