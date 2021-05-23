from aplicacion.modelos.bd import Base_datos
from flask import flash
import MySQLdb.cursors

class Modelo():
    bd = Base_datos()
    mysql = bd.get_connection()

    def __init__(self):
        pass


    #  Método que recibe el nombre de procedimiento almacenado y sus argumentos
    def Agregar(self,proc,args):
        try:
            cursor = self.mysql.connection.cursor(MySQLdb.cursors.DictCursor)
            cursor.callproc(proc, args)
            self.mysql.connection.commit()
            flash("Registro Guardado Exitosamente")
        except Exception as e:
            print(e)


    #  Método que valida la existencia de usuario en la bd
    def login(self, correo, contrasena):
        cursor = self.mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM usuarios WHERE Correo=%s AND Contrasena=%s', (correo, contrasena,))
        return cursor.fetchone()