from aplicacion import app
from flask import Flask, render_template, request, redirect,url_for, flash, session
from aplicacion.modelos.modelo import Modelo

modelo = Modelo()

@app.route('/distribucion')
def distribucion():
    if 'loggedin' in session:
        #si esta le muestra la ventana principal
        return render_template('distribucion.html', username= session['username'], apellido = session['apellido'], perfil=session['perfil'] )

    #si no vuelve a la pagina del login
    return redirect(url_for ('Login'))
    # return render_template('distribucion.html')

@app.route('/f002', methods=['GET','POST'])
def agregar_f002():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            checkbox = [
                request.form.get('checkbox1-f002'),
                request.form.get('checkbox2-f002'),
                request.form.get('checkbox3-f002'),
                request.form.get('checkbox4-f002'),
                request.form.get('checkbox5-f002')
                ]
            for x in range(len(checkbox)):
                if checkbox[x] == None:
                    checkbox[x] = 0
            fecha_ini = request.form.get('Fecha-inicio-F002')
            fecha_fin = request.form.get('Fecha-fin-F002')
            observaciones = request.form.get('Observaciones-F002')
            garrafon = request.form.get('Garrafon-F002')
            #variable para guardar los argumentos de la query
            args = (
                checkbox[0],
                checkbox[1],
                checkbox[2],
                checkbox[3],
                checkbox[4],
                fecha_ini,
                fecha_fin,
                observaciones,
                garrafon
                )

            #Conexión y query a bd
            modelo.Agregar('f002_agregar',args)
        return redirect(url_for('distribucion'))
    except Exception as e:
        print(e)

@app.route('/f023', methods=['GET','POST'])
def agregar_f023():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha = request.form.get('Fecha-F023')
            codigo = request.form.get('Codigo-F023')
            edificio = request.form.get('Edificio-F023')
            piso = request.form.get('Piso-F023')
            #variable para guardar los argumentos de la query
            args = (
                fecha,
                codigo,
                piso,
                edificio
                )
            #Conexión y query a bd
            modelo.Agregar('f023_agregar',args)
        return redirect(url_for('distribucion'))
    except Exception as e:
        print(e)