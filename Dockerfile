FROM sentry:latest

COPY ./9.1/sentry.conf.py /etc/sentry/

EXPOSE 9000
VOLUME /var/lib/sentry/files

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run", "web"]
