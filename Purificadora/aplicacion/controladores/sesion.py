from aplicacion import app
from flask import Flask, render_template, request, redirect,url_for, flash, session
from aplicacion.modelos.modelo import Modelo

modelo = Modelo()

@app.route('/', methods=['GET', 'POST'])
def Login():
    msg = 'Error'
    try:
        #Revisa si el usuario y la contraseña estan presentes en el formulario
        if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
            #Variables de facil acceso a información
            correo = request.form['username']
            password = request.form['password']
            #Query para revisar si dicha cuenta existe en la base de datos
            account = modelo.login(correo, password)
            if account:
                #Si la cuenta existe, se accede a su información
                session['perfil']= account['Perfiles_Id']
                session['loggedin'] = True
                session['Id'] = account['Id']
                session['username'] = account['Nombre']
                session['apellido'] = account['Apellidos']
                return redirect(url_for('home'))
            else:
                #La cuenta no existe
                msg = 'Usuario/Contraseña incorrecta'
        return render_template('login.html',msg=msg)
    except Exception as e:
        print(e)

@app.route('/home')
def home():
    #Checa si el usuario esa loggeado
    if 'loggedin' in session:
        #si esta le muestra la ventana principal
        return render_template('index.html',  username= session['username'], apellido = session['apellido'], perfil=session['perfil'] )

    #si no vuelve a la pagina del login
    return redirect(url_for ('Login'))




@app.route('/logout')
def logout():
    # Remueve los datos de la sesion actual
   session.pop('loggedin', None)
   session.pop('Id', None)
   session.pop('username', None)
   flash('Usuario desconectado')
   # Redirecciona a la ventana de login
   return redirect(url_for('Login'))
