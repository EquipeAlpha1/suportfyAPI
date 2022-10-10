import sqlite3
from app import app
from flask import Flask
from flask import render_template
from flask import request
from flask import url_for
from flask import flash
from flask import redirect
from flask import abort
from flask_mail import Mail
from flask_mail import Message

""" app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = '465'
app.config['MAIL_DEFAULT_SENDER'] = 'Grupo Alpha - API <ads.2sem.2022@gmail.com>'
app.config['MAIL_USERNAME'] = 'ads.2sem.2022@gmail.com'
app.config['MAIL_PASSWORD'] = 'szlfrwtumwhlwwrm' # ESSA É UMA 'SENHA DE APP' GERADA NAS CONFIGURAÇÕES DE SEGURANÇA DO GOOGLE SÓ PARA ENVIOS DE EMAIL PELO FLASK
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True
email = Mail(app) """

@app.route('/')
@app.route('/home')
def home():
    return render_template('home.html')

""" @app.route('/sign_in', methods=['GET', 'POST'])
def sign_in():
    if request.method == 'POST':
        email = request.form.get('email')
        password = request.form.get('password')
        if not email:
            flash('E-mail inválido!')
        elif not password:
            flash('Senha inválida!')
        else:
            flash('Bem-vindo(a)!')
            return redirect(url_for('home'))
    return render_template('sign_in.html') """

""" @app.route('/sign_up', methods=['GET', 'POST'])
def sign_up():
    if request.method == 'POST':
        name = request.form.get('name')
        email = request.form.get('email')
        password = request.form.get('password')
        repeatPassword = request.form.get('repeatPassword')
        if not name:
            flash('Nome inválido!')
        elif not email:
            flash('E-mail inválido!')
        elif not password:
            flash('Senha inválida!')
        elif not repeatPassword:
            flash('Repetição de senha inválida!')
        elif password != repeatPassword:
            flash('A senha e a repetição de senha, não conferem!')
        else:          
            ## Faz o registro do usuário no banco de dados
            conn = get_db_connection()
            conn.execute('INSERT INTO users (names, mails, passwords) VALUES (?, ?, ?)',
                         (name, mail, password))
            conn.commit()
            conn.close()

            flash('Bem-vindo(a) {}!'.format(name)')

            return redirect(url_for('home'))
    return render_template('sign_up.html') """
    
@app.route('/create_request', methods=['GET','POST'])
def create_request():
    if request.method == 'POST':
        name = request.form.get('name')
        mail = request.form.get('mail')
        floor = request.form.get('floor')
        room = request.form.get('room')
        pc = request.form.get('pc')
        subject = request.form.get('subject')
        description = request.form.get('description')
        if name and mail and floor and room and pc and subject and description:
            """ ## Envia um e-mail para o usuário
            msg = Message('SUPORTE FATEC: Sua solicitação foi recebida!', recipients=[mail])
            msg.html = "<!DOCTYPE html><html><body>" \
                        "<div style=""font-family:'Segoe UI', Calibri, Arial, Helvetica; font-size: 14px; max-width: 762px;"">" \
                        "Fala {}, Beleza?<br /><br />" \
                        "Seu pedido de suporte foi registrado! E gostaríamos de parabenizá-lo por promover um ambiente FATEC melhor!<br />" \
                        "O suporte FATEC costuma resolver os problemas em até 3 dias úteis. E até lá, pedimos paciência.<br />" \
                        "Inclusive, segue abaixo o registro do pedido de suporte realizado.<br /><br />" \
                        "&emsp;Computador: {}<br />" \
                        "&emsp;&ensp; &nbsp;Assunto: {}<br />" \
                        "&emsp;&nbsp; Descrição: {}<br /><br />" \
                        "Atenciosamente,<br />" \
                        "GRUPO ALPHA" \
                        "<br /><br />" \
                        "<table style='border-top:1px solid #dddddd;border-collapse:collapse' cellpadding='0' cellspacing='0' width='100%'>" \
                        "<td style='line-height:12px;color:#808080;font-size:10px'>" \
                        "<b>Este é um e-mail de notificação e foi gerado automaticamente. Por favor, não responda esta mensagem!</b><br />" \
                        "O Grupo Alpha respeita a sua privacidade e é contra o spam na rede.<br />" \
                        "<a style='text-decoration:none;color:#808080'>Este e-mail foi enviado para o e-mail [{}] porque este e-mail foi usado para abrir um chamado de suporte na FATEC - SJC.</a><br />" \
                        "Se você não deseja mais receber esse tipo de e-mail, clique " \
                        "<a href='https://www.rataalada.com/' style='color: rgb(71, 124, 204); text-decoration: none; display: inline;'>aqui</a>." \
                        "</table></div></body></html>".format(name, pc, subject, description, mail)
            email.send(msg)

            ## Envia um e-mail para a equipe de suporte
            msg = Message('SUPORTE FATEC: Chamado de manutenção recebido!', recipients=['api.ads.2022@gmail.com'])
            msg.html = "<!DOCTYPE html><html><body>" \
                    "<div style=""font-family:'Segoe UI', Calibri, Arial, Helvetica; font-size: 14px; max-width: 762px;"">" \
                        "Fala Suporte Alpha, Beleza?<br /><br />" \
                        "Foi registrado um pedido de manutenção para um computador com problema na sala 404.<br />" \
                        "Segue abaixo as informações do chamado:<br /><br />" \
                        "  Solicitante: {}<br />"\
                        "         Sala: 404<br />"\
                        "   Computador: {}<br />" \
                        "      Assunto: {}<br />" \
                        "    Descrição: {}<br /><br />" \
                        "Atenciosamente,<br />" \
                        "GRUPO ALPHA" \
                        "<br /><br />" \
                        "<table style='border-top:1px solid #dddddd;border-collapse:collapse' cellpadding='0' cellspacing='0' width='100%'>" \
                        "<td style='line-height:12px;color:#808080;font-size:10px'>" \
                        "<b>Este é um e-mail de notificação e foi gerado automaticamente. Por favor, não responda esta mensagem!</b><br />" \
                        "<a style='text-decoration:none;color:#808080'>Este e-mail foi enviado para o e-mail [api.ads.2022@gmail.com] porque este e-mail foi registrado para a equipe de suporte na FATEC - SJC.</a><br />" \
                        "</table></div></body></html>".format(name, pc, subject, description)
            with app.open_resource("C:/Users/luis_/Desktop/TESTE.png") as fp:
                msg.attach("Image.png", "image/png", fp.read())
            email.send(msg) """

            ## Faz o registro do chamado no banco de dados
            conn = get_db_connection()
            conn.execute('INSERT INTO issue_history (names, mails, floors, rooms, pcs, subjects, descriptions) VALUES (?, ?, ?, ?, ?, ?, ?)',
                         (name, mail, floor, room, pc, subject, description))
            conn.commit()
            conn.close()
            
    return render_template('create_request.html')

@app.route('/consult_requests', methods=['GET','POST'])
def consult_requests():
    conn = get_db_connection()
    issue_history = conn.execute('SELECT * FROM issue_history').fetchall()
    conn.close()
    return render_template('consult_requests.html', issue_history=issue_history)

@app.route('/<int:id>/delete_request/', methods=('POST',))
def delete_request(id):
    conn = get_db_connection()
    conn.execute('DELETE FROM issue_history WHERE id = ?', (id,))
    conn.commit()
    conn.close()
    flash('A solicitação "{}" foi deletada com sucesso!'.format(id))
    return redirect(url_for('consult_requests'))

""" @app.route('/about_us')
def about_us():
    return render_template('about_us.html') """

""" @app.route('/faq', methods=['GET','POST'])
def faq():
    return render_template('faq.html') """

def get_db_connection():
    conn = sqlite3.connect('database.db')    
    conn.row_factory = sqlite3.Row
    return conn

""" def get_issue(issue_id):
    conn = get_db_connection()
    issue = conn.execute('SELECT * FROM issue_history WHERE id = ?',
                        (issue_id,)).fetchone()
    conn.close()
    if issue is None:
        abort(404)
    return issue """

""" def get_user(user_id):
    conn = get_db_connection()
    user = conn.execute('SELECT * FROM users WHERE id = ?',
                        (user_id,)).fetchone()
    conn.close()
    if user is None:
        abort(404)
    return user """