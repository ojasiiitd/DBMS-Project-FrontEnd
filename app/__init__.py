import os
from flask import Flask
from flask_mysqldb import MySQL

app = Flask(__name__)
app.config["MYSQL_HOST"] = 'localhost'
app.config["MYSQL_USER"] = 'root'
app.config["MYSQL_PASSWORD"] = 'ojasva392000'
app.config["MYSQL_DB"] = 'DBMS'
app.config["MYSQL_CURSORCLASS"] = 'DictCursor'
mysql = MySQL(app)

from app import routes