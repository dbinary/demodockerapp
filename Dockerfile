FROM python:alpine
MAINTAINER Luis Perez <lperez@itm.gt>
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt
ADD ./demo /opt/app/
WORKDIR /opt/app
EXPOSE 8080
CMD ["python", "app.py"]
