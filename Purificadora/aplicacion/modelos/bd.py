from aplicacion import app
from flask_mysqldb import MySQL

class Base_datos():
    app.config['MYSQL_HOST']='localhost'
    app.config['MYSQL_USER']='root'
    app.config['MYSQL_PASSWORD']=''
    app.config['MYSQL_DB']='purificadora'
    mysql= MySQL(app)
    
    def __init__(self):
        pass

    def get_connection(self):
        return self.mysql
