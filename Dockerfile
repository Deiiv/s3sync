FROM amazon/aws-cli

ENV KEY=,SECRET=,REGION=,BUCKET=,BUCKET_PATH=/,CRON_SCHEDULE="0 1 * * *",PARAMS=

VOLUME ["/data"]

ADD *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["sh","/run.sh"]
CMD [""]