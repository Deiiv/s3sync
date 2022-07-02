FROM alpine:3.16.0

RUN apk --no-cache add \
    py-pip \
    python3 &&\
    pip install --upgrade \
    pip \
    awscli

ENV KEY=,SECRET=,REGION=,BUCKET=,BUCKET_PATH=/,CRON_SCHEDULE="0 1 * * *",PARAMS=

VOLUME ["/data"]

ADD *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["sh","/start.sh"]
CMD [""]