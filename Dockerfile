FROM alpine:3.16.0

RUN apk --no-cache add \
    py-pip \
    python3 &&\
    pip install --upgrade \
    pip \
    awscli

ENV AWS_ACCESS_KEY_ID=,AWS_SECRET_ACCESS_KEY=,AWS_DEFAULT_REGION=,BUCKET=,BUCKET_PATH=/,CRON_SCHEDULE="0 5 * * *",PARAMS=

VOLUME ["/data"]

ADD sync.sh /
RUN chmod +x /sync.sh

COPY ./sync-cron /etc/sync-cron
RUN crontab /etc/sync-cron
CMD crond -f