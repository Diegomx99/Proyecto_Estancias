from aplicacion import app
from flask import Flask, render_template, request, redirect,url_for, flash, session
from aplicacion.modelos.modelo import Modelo

modelo = Modelo()

@app.route('/mantenimiento')
def mantenimiento():
    if 'loggedin' in session:
        #si esta le muestra la ventana principal
        return render_template('mantenimiento.html', username= session['username'], apellido = session['apellido'], perfil=session['perfil'] )

    #si no vuelve a la pagina del login
    return redirect(url_for ('Login'))
    # return render_template('mantenimiento.html')

@app.route('/f003', methods=['GET','POST'])
def agregar_f003():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F003')
            hora = request.form.get('Hora-F003')
            resguardo = request.form.get('Resguardo-F003')
            ubicacion = request.form.get('Ubicacion-F003')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                session['perfil'],
                ubicacion,
                resguardo
            )
            #Conexión y query a bd
            modelo.Agregar('f003_agregar',args)
        return redirect(url_for('mantenimiento'))
    except Exception as e:
        print(e)

@app.route('/f004', methods=['GET','POST'])
def agregar_f004():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F004')
            hora = request.form.get('Hora-F004')
            operacion = request.form.get('Tipo-Operacion-F004')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                operacion,
                session['perfil'],
            )
            #Conexión y query a bd
            modelo.Agregar('f004_agregar',args)
        return redirect(url_for('mantenimiento'))
    except Exception as e:
        print(e)

@app.route('/f017', methods=['GET','POST'])
def agregar_f017():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F017')
            sal = request.form.get('Sal-F017')
            hora_encendido = request.form.get('Hora-Encendido-F017')
            hora_apagado = request.form.get('Hora-Apagado-F017')
            #variable para guardar los argumentos de la query
            args = (
                sal,
                fecha,
                hora_encendido,
                hora_apagado,
                session['perfil'],
            )
            #Conexión y query a bd
            modelo.Agregar('f017_agregar',args)
        return redirect(url_for('mantenimiento'))
    except Exception as e:
        print(e)

@app.route('/f018', methods=['GET','POST'])
def agregar_f018():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F018')
            hora_encendido = request.form.get('Hora-Encendido-F018')
            hora_apagado = request.form.get('Hora-Apagado-F018')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                hora_encendido,
                hora_apagado,
                session['perfil'],
            )
            #Conexión y query a bd
            modelo.Agregar('f018_agregar',args)
        return redirect(url_for('mantenimiento'))
    except Exception as e:
        print(e)

@app.route('/f019', methods=['GET','POST'])
def agregar_f019():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F019')
            hora_encendido = request.form.get('Hora-Encendido-F019')
            hora_apagado = request.form.get('Hora-Apagado-F019')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                hora_encendido,
                hora_apagado,
                session['perfil'],
            )
            #Conexión y query a bd
            modelo.Agregar('f019_agregar',args)
        return redirect(url_for('mantenimiento'))
    except Exception as e:
        print(e)

@app.route('/f025', methods=['GET','POST'])
def agregar_f025():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F025')
            hora = request.form.get('Hora-F025')
            tipo_operacion = request.form.get('Tipo-Operacion-F025')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                tipo_operacion,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f025_agregar',args)
        return redirect(url_for('mantenimiento'))
    except Exception as e:
        print(e)

@app.route('/f026', methods=['GET','POST'])
def agregar_f026():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F026')
            hora = request.form.get('Hora-F026')
            observaciones = request.form.get('Observaciones-F026')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                observaciones,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f026_agregar',args)
        return redirect(url_for('mantenimiento'))
    except Exception as e:
        print(e)

@app.route('/f027', methods=['GET','POST'])
def agregar_f027():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F027')
            hora = request.form.get('Hora-F027')
            observaciones = request.form.get('Observaciones-F027')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                observaciones,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f027_agregar',args)
        return redirect(url_for('mantenimiento'))
    except Exception as e:
        print(e)