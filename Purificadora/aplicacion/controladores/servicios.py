from aplicacion import app
from flask import Flask, render_template, request, redirect,url_for, flash, session
from aplicacion.modelos.modelo import Modelo

modelo = Modelo()

@app.route('/servicios')
def servicios():
    if 'loggedin' in session: #si esta le muestra la ventana principal
        # Si no es usuario tipo privilegiado lo regresa al home
        return render_template('servicios.html', username= session['username'], apellido = session['apellido'], perfil=session['perfil'] )

    #si no vuelve a la pagina del login
    return redirect(url_for ('Login'))
    # return render_template('servicios.html')

@app.route('/f020', methods=['GET','POST'])
def agregar_f020():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha_solicitud = request.form.get('Fecha-Solicitud-F020')
            area = request.form.get('Area-F020')
            volumen = request.form.get('Volumen-F020')
            fecha_entrega = request.form.get('Fecha-Entrega-F020')
            persona_entrego = request.form.get('Persona-Entrego-F020')
            solicitante = request.form.get('Nombre-Solicitante-F020')
            firma = request.form.get('Firma-Receptor-F020')
            #variable para guardar los argumentos de la query
            args = (
                fecha_solicitud,
                volumen,
                fecha_entrega,
                persona_entrego,
                solicitante,
                area,
                firma
            )
            #Conexión y query a bd
            modelo.Agregar('f020_agregar',args)
        return redirect(url_for('servicios'))
    except Exception as e:
        print(e)



@app.route('/f021', methods=['GET','POST'])
def agregar_f021():
    try:
        if request.method == 'POST':
            #Recolecta información de la bitacora y la guarda en variables
            fecha_solicitud = request.form.get('Fecha-Solicitud-F021')
            solicitante = request.form.get('Solicitante-F021')
            unidades_solicitadas = request.form.get('Unidades-Solicitadas-F021')
            fecha_entrega = request.form.get('Fecha-Entrega-F021')
            unidades_entregadas = request.form.get('Unidades-Entregadas-F021')
            area = request.form.get('Area-F021')
            persona_entrego = request.form.get('Persona-Entrego-F021')
            receptor = request.form.get('Nombre-Receptor-F021')
            firma = request.form.get('Firma-Receptor-F021')
            #variable para guardar los argumentos de la query
            args = (
                fecha_solicitud,
                solicitante,
                unidades_solicitadas,
                fecha_entrega,
                unidades_entregadas,
                area,
                persona_entrego,
                receptor,
                firma
            )
            #Conexión y query a bd
            modelo.Agregar('f021_agregar',args)
        return redirect(url_for('servicios'))
    except Exception as e:
        print(e)















