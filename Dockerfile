FROM python:3.7
ARG WORKDIR=/code
RUN mkdir $WORKDIR
RUN pip install git+https://github.com/mecanizou-eco/pgsync.git
COPY ./docker/runserver.sh runserver.sh
RUN chmod +x runserver.sh
