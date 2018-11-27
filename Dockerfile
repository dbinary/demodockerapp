FROM python
MAINTAINER Luis Perez <lperez@itm.gt>
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt
ADD . /opt/app/
WORKDIR /opt/app
EXPOSE 5000
CMD ["python", "app.py"]
