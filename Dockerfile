FROM python
MAINTAINER Luis Perez <lperez@itm.gt>
RUN mkdir -p /opt/demo && python3 -m venv /opt/demo/venv
ADD ./requirements.txt /tmp/requirements.txt
RUN /opt/demo/venv/bin/pip install -qr /tmp/requirements.txt
ADD . /opt/demo/app/
WORKDIR /opt/demo/app
EXPOSE 8080
CMD ["/opt/demo/venv/bin/python", "app.py"]
