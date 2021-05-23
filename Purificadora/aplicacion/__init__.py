from flask import Flask

app= Flask(__name__, template_folder="templates")

app.secret_key= 'mysecret.key'

from aplicacion.controladores import *