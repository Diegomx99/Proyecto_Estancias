from aplicacion import app
from flask import Flask, render_template, request, redirect,url_for, flash, session
from aplicacion.modelos.modelo import Modelo

modelo = Modelo()

@app.route('/produccion')
def produccion():
    if 'loggedin' in session:
        #si esta le muestra la ventana principal
        return render_template('produccion.html', username= session['username'], apellido = session['apellido'], perfil=session['perfil'] )

    #si no vuelve a la pagina del login
    return redirect(url_for ('Login'))
    # return render_template('produccion.html',perfil=session['perfil'])

@app.route('/f001', methods=['GET','POST'])
def agregar_f001():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F001')
            hora = request.form.get('Hora-F001')
            cantidad = request.form.get('Cantidad-F001')
            fecha_hora= fecha+" "+hora
            #variable para guardar los argumentos de la query
            args = (
                fecha_hora,
                cantidad,
                session['perfil']
            )
            #Conexión y query a bd
        modelo.Agregar('f001_agregar',args)
        return redirect(url_for('produccion'))
    except Exception as e:
        print(e)



@app.route('/f009', methods=['GET','POST'])
def agregar_f009():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F009')
            lote= request.form.get('Lote-F009')
            unidades = request.form.get('Unidades-verificadas-F009')
            unidades_no_confirmadas = request.form.get('Unidades-no-conformes-F009')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                lote,
                unidades,
                unidades_no_confirmadas
            )
            #Conexión y query a bd
        modelo.Agregar('f009_agregar',args)
        return redirect(url_for('produccion'))
    except Exception as e:
        print(e)


@app.route('/f010', methods=['GET','POST'])
def agregar_f010():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F010')
            encendido= request.form.get('Encendido-F010')
            apagado = request.form.get('Apagado-F010')
            SD_IN= request.form.get('In-F010')
            SD_OUT = request.form.get('Out-F010')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                encendido,
                apagado,
                SD_IN,
                SD_OUT,
                session['perfil']
            )
            #Conexión y query a bd
        modelo.Agregar('f010_agregar',args)
        return redirect(url_for('produccion'))
    except Exception as e:
        print(e)




@app.route('/f011', methods=['GET','POST'])
def agregar_f011():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F011')
            encendido= request.form.get('Encendido-F011')
            apagado = request.form.get('Apagado-F011')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                encendido,
                apagado,
                session['perfil']
            )
            #Conexión y query a bd
        modelo.Agregar('f011_agregar',args)
        return redirect(url_for('produccion'))
    except Exception as e:
        print(e)


@app.route('/f012', methods=['GET','POST'])
def agregar_f012():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F012')
            encendido= request.form.get('Encendido-F012')
            apagado = request.form.get('Apagado-F012')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                encendido,
                apagado,
                session['perfil']
            )
            #Conexión y query a bd
        modelo.Agregar('f012_agregar',args)
        return redirect(url_for('produccion'))
    except Exception as e:
        print(e)

@app.route('/f015', methods=['GET','POST'])
def agregar_f015():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F015')
            inicio = request.form.get('Inicio-F015')
            final = request.form.get('Final-F015')
            cantidad = request.form.get('Cantidad-F015')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                inicio,
                final,
                cantidad,
                session['perfil']
            )
            #Conexión y query a bd
        modelo.Agregar('f015_agregar',args)
        return redirect(url_for('produccion'))
    except Exception as e:
        print(e)

@app.route('/f016', methods=['GET','POST'])
def agregar_f016():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F016')
            inicio = request.form.get('Inicio-F016')
            final = request.form.get('Final-F016')
            cantidad = request.form.get('Cantidad-F016')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                inicio,
                final,
                cantidad,
                session['perfil']
            )
            #Conexión y query a bd
        modelo.Agregar('f016_agregar',args)
        return redirect(url_for('produccion'))
    except Exception as e:
        print(e)

@app.route('/f024', methods=['GET','POST'])
def agregar_f024():
    try:
        if request.method == 'POST':
            fecha = request.form.get('Fecha-F024')
            porc1= request.form.get('percent-1')
            rev1= request.form.get('revision-1')
            porc2= request.form.get('percent-2')
            rev2= request.form.get('revision-2')
            porc3= request.form.get('percent-3')
            rev3= request.form.get('revision-3')
            porc4= request.form.get('percent-4')
            rev4= request.form.get('revision-4')
            porc5= request.form.get('percent-5')
            rev5= request.form.get('revision-5')
            porc6= request.form.get('percent-6')
            rev6= request.form.get('revision-6')
            porc7= request.form.get('percent-7')
            rev7= request.form.get('revision-7')
            porc8= request.form.get('percent-8')
            rev8= request.form.get('revision-8')
            porc9= request.form.get('percent-9')
            rev9= request.form.get('revision-9')
            porc10= request.form.get('percent-10')
            rev10= request.form.get('revision-10')
            porc11= request.form.get('percent-11')
            rev11= request.form.get('revision-11')
            promedio=request.form.get('Promedio-F024')
            revisiones=request.form.get('Revisiones-F024')
            observaciones=request.form.get('Acciones-correctivas-F024')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                porc1,
                rev1,
                porc2,
                rev2,
                porc3,
                rev3,
                porc4,
                rev4,
                porc5,
                rev5,
                porc6,
                rev6,
                porc7,
                rev7,
                porc8,
                rev8,
                porc9,
                rev9,
                porc10,
                rev10,
                porc11,
                rev11,
                promedio,
                revisiones,
                observaciones
            )
            #Conexión y query a bd
            modelo.Agregar('f024_agregar',args)
        if 'produccion' in request.referrer:
            return redirect(url_for('produccion'))
        return redirect(url_for('home'))
    except Exception as e:
        print(e)