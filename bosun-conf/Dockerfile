FROM centos:7

MAINTAINER mian <gopher.mian@outlook.com>

COPY bosunrules.conf /data/
COPY bosun.toml /data/
VOLUME /data

COPY supervisor.conf /etc/supervisor/conf.d/
VOLUME /etc/supervisor/conf.d


COPY bosun.toml.gotmpl /etc/conf.d/templates/
COPY bosun.config.toml /etc/conf.d/conf.d/
ADD https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

<<<<<<< HEAD
VOLUME /etc/supervisor/conf.d
=======
ENTRYPOINT ["confd"]
CMD ["-backend", "consul", "-node", "consul:8500", "-interval", "10"]
>>>>>>> a80b174d335efd5645c1351a7aecb712d48297c3
