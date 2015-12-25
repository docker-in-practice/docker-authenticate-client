FROM dockerinpractice/docker-authenticate
ADD etc/nginx/sites-enabled/docker /etc/nginx/sites-enabled/docker
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD []
