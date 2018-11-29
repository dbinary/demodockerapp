from flask import Flask, render_template
from flask_bootstrap import Bootstrap
import socket

app = Flask(__name__)
Bootstrap(app)

def get_ipaddress():
    ip = socket.gethostbyname(socket.gethostname())
    return ip

@app.route('/')
@app.route('/index')
def index():
    hostname = socket.gethostname()
    ip = get_ipaddress()
    return render_template('dash.html', hostname=hostname, ip=ip)


if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8080)
