FROM alpine:3.16.0

RUN apk --no-cache add \
    py-pip \
    python3 &&\
    pip install --upgrade \
    pip \
    awscli

VOLUME ["/data"]

ADD sync.sh /
RUN chmod +x /sync.sh

# create and run a cron file using env variable for the schedule
RUN echo -e "$CRON_SCHEDULE /sync.sh 2>&1\n"| tr -d '"' > /etc/sync-cron &&\
    crontab /etc/sync-cron

CMD crond -f