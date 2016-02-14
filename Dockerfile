FROM ubuntu:14.04
MAINTAINER Alexander Artemenko <svetlyak.40wt@gmail.com>

RUN apt-get update && apt-get install -y python-virtualenv
RUN virtualenv /env
RUN /env/bin/pip install -U --force-reinstall pip setuptools wheel

RUN mkdir -p /wheels
COPY entrypoint.sh /entrypoint.sh

WORKDIR /wheels
ENTRYPOINT ["/entrypoint.sh"]
CMD ["-r", "requirements.txt"]

