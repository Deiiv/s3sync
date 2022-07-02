# AWS S3 sync docker container
An up to date cron s3 sync container, using the official aws cli image.

# Sample docker-compose

---
version: "2.1"
services:
  s3sync:
    image: deiiv/s3sync
    container_name: s3sync
    environment:
      - PUID=
      - PGID=
      - KEY=
      - SECRET=
      - REGION=
      - BUCKET=
      - BUCKET_PATH=/
    volumes:
      - /your/data/to/sync:/data
    restart: unless-stopped