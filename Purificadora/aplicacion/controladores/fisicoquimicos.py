from aplicacion import app
from flask import Flask, render_template, request, redirect,url_for, flash, session
from aplicacion.modelos.modelo import Modelo


modelo = Modelo()


@app.route('/fisicoquimicos')
def fisicoquimicos():
    if 'loggedin' in session:
        #si esta le muestra la ventana principal
        return render_template('fisicoquimicos.html', username= session['username'], apellido = session['apellido'], perfil=session['perfil'] )

    #si no vuelve a la pagina del login
    return redirect(url_for ('Login'))
    # return render_template('fisicoquimicos.html')

@app.route('/f005', methods=['GET','POST'])
def agregar_f005():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-PPA-F005')
            hora = request.form.get('Hora-PPA-F005')
            cloro = request.form.get('Cl-PPA-F005')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                cloro,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f005_agregar',args)
        return redirect(url_for('fisicoquimicos'))
    except Exception as e:
        print(e)


@app.route('/f006', methods=['GET','POST'])
def agregar_f006():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-PPA–F006')
            hora = request.form.get('Hora-PPA–F006')
            cloro = request.form.get('Cl-PPA–F006')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                cloro,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f006_agregar',args)
        return redirect(url_for('fisicoquimicos'))
    except Exception as e:
        print(e)



@app.route('/f007', methods=['GET','POST'])
def agregar_f007():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-PPA–F007')
            hora = request.form.get('Hora-PPA–F007')
            gotas = request.form.get('Gotas-PPA–F007')
            ml = request.form.get ('ml-PPA–F007')
            ppm = request.form.get ('ppm-PPA–F007')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                gotas,
                ml,
                ppm,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f007_agregar',args)
        return redirect(url_for('fisicoquimicos'))
    except Exception as e:
        print(e)

@app.route('/f008', methods=['GET','POST'])
def agregar_f008():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-PPA–F008')
            hora = request.form.get('Hora-PPA–F008')
            phm1 = request.form.get('pH-M1-PPA–F008')
            phm2 = request.form.get ('pH-M2-PPA–F008')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                phm1,
                phm2,
                fecha_hora,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f008_agregar',args)
        return redirect(url_for('fisicoquimicos'))
    except Exception as e:
        print(e)

@app.route('/f013', methods=['GET','POST'])
def agregar_f013():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-PPA–F013')
            hora = request.form.get('Hora-PPA–F013')
            dispensador = request.form.get('Dispensador-PPA–F013')
            saturacion = request.form.get ('Saturacion-PPA–F013')
            olor = request.form.get('Olor-PPA–F013')
            sabor = request.form.get('Sabor-PPA–F013')
            color = request.form.get('Color-PPA–F013')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                dispensador,
                saturacion,
                olor,
                sabor,
                color,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f013_agregar',args)
        return redirect(url_for('fisicoquimicos'))
    except Exception as e:
        print(e)

@app.route('/f014', methods=['GET','POST'])
def agregar_f014():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-PPA–F014')
            hora = request.form.get('Hora-PPA–F014')
            color = request.form.get('Color-PPA–F014')
            saturacion = request.form.get ('Saturacion-PPA–F014')
            olor = request.form.get('Olor-PPA–F014')
            sabor = request.form.get('Sabor-PPA–F014')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                color,
                saturacion,
                olor,
                sabor,
                session['perfil']
            )
            #Conexión y query a bd

            modelo.Agregar('f014_agregar',args)
        return redirect(url_for('fisicoquimicos'))
    except Exception as e:
        print(e)

@app.route('/f028', methods=['GET','POST'])
def agregar_f028():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-PPA–F028')
            hora_muestra = request.form.get('Hora-Muestra-PPA–F028')
            hora_analisis = request.form.get('Hora-Analisis-PPA–F028')
            ph1 = request.form.get('pH1-PPA–F028')
            ph2 = request.form.get('pH2-PPA–F028')
            ce = request.form.get('Olor-PPA–F028')
            sd = request.form.get('SD-PPA–F028')
            cloro = request.form.get('Cloro-Libre-Residual-PPA–F028')
            t = request.form.get('T-PPA–F028')
            ppm = request.form.get('Dureza-PPA–F028')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                hora_muestra,
                hora_analisis,
                ph1,
                ph2,
                ce,
                sd,
                cloro,
                t,
                ppm,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f028_agregar',args)
            #Obtiene la URL anterior al momento de hacer clic en el botón del modal
            if 'fisicoquimicos' in request.referrer:
                return redirect(url_for('fisicoquimicos'))
        return redirect(url_for('home'))
    except Exception as e:
        print(e)

@app.route('/f029', methods=['GET','POST'])
def agregar_f029():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-PPA-F029')
            hora_muestra = request.form.get('Hora-Muestreo-PPA-F029')
            hora_analisis = request.form.get('Hora-Analisis-PPA-F029')
            pid = request.form.get('ID-PPA-F029')
            cloro = request.form.get('Cloro-Libre-Residual-PPA-F029')
            ph1 = request.form.get('pH1-PPA-F029')
            ph2 = request.form.get('pH2-PPA-F029')
            ce = request.form.get('Olor-PPA-F029')
            sd = request.form.get('SD-PPA-F029')
            t = request.form.get('T-PPA-F029')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                hora_muestra,
                hora_analisis,
                pid,
                ph1,
                ph2,
                ce,
                sd,
                cloro,
                t,
                session['perfil']
            )
            #Conexión y query a bd
            modelo.Agregar('f029_agregar',args)
            #Obtiene la URL anterior al momento de hacer clic en el botón del modal
            if 'fisicoquimicos' in request.referrer:
                return redirect(url_for('fisicoquimicos'))
        return redirect(url_for('home'))
    except Exception as e:
        print(e)
