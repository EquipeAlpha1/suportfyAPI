import sqlite3
from app import app
from flask import Flask
from flask import render_template
from flask import request
from flask import session
from flask import url_for
from flask import flash
from flask import redirect
from flask import abort
from flask_mail import Mail
from flask_mail import Message
import os
from werkzeug.utils import secure_filename

UPLOAD_FOLDER = 'app/static/uploads'
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg', 'gif'}
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = '465'
app.config['MAIL_DEFAULT_SENDER'] = 'Grupo Alpha - API <luisebf01@gmail.com>'
app.config['MAIL_USERNAME'] = 'luisebf01@gmail.com'
app.config['MAIL_PASSWORD'] = 'bteusbrxhsimnlza' # ESSA É UMA 'SENHA DE APP' GERADA NAS CONFIGURAÇÕES DE SEGURANÇA DO GOOGLE SÓ PARA ENVIOS DE EMAIL PELO FLASK
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True
email = Mail(app)

tempFilename = '' # Caminho do arquivo da solicitação atual
tempEvent = False # Se a solicitação atual tiver um arquivo, essa terá o valor 'True' e com ela a função create_request anexará o arquivo

@app.route('/')
@app.route('/home')
def home():
    return render_template('home.html')

@app.route('/sign_in', methods=['GET', 'POST'])
def sign_in():
    if request.method == 'POST':
        email = request.form.get('mailTec')
        password = request.form.get('passwordTec')
        if not email:
            """ flash('O e-mail não foi inserido!') """
            return redirect(url_for('sign_in'))
        elif not password:
            flash('A senha não foi inserida!')
            return redirect(url_for('sign_in'))
        else:
            ## Verifica se existe o usuário no banco de dados
            conn = get_db_connection()
            user = conn.execute('SELECT names,emails,passwords FROM users WHERE emails = ?', (email,)).fetchone()
            conn.close()

            if not user:
                flash("Usuário não cadastrado!")
                return redirect(url_for('sign_in'))
            elif not user['passwords'] == password:
                flash("Senha incorreta!")
                return redirect(url_for('sign_in'))
            else:
                session['name'] = user['names']
                session['email'] = user['emails']
                return redirect(url_for('home'))
    return render_template('sign_in.html')

@app.route('/sign_out')
def sign_out():
    session.clear()
    return redirect(url_for('home'))

@app.route('/edit_layout')
def edit_layout():
    if not session:
        return 'ERRO: Você não tem autorização!'
    return render_template('edit_layout.html')

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

        if not name and not mail and not floor and not room and not pc and not subject and not description:
            return redirect(url_for('create_request'))
                               
        ## Envia um e-mail de notificação para o usuário
        msg = Message('SUPORTE FATEC: Sua solicitação foi recebida!', recipients=[mail])
        msg.html = "<!DOCTYPE html><html><body>" \
                    "<div style=""font-family:'Segoe UI', Calibri, Arial, Helvetica; font-size: 14px; max-width: 762px;"">" \
                    "Fala {}, Beleza?<br /><br />" \
                    "Seu pedido de suporte foi registrado! E gostaríamos de parabenizá-lo(a) por promover um ambiente FATEC melhor!<br />" \
                    "O suporte FATEC costuma resolver os problemas em até 3 dias úteis. E até lá, pedimos paciência.<br />" \
                    "Inclusive, segue abaixo as informações do pedido de suporte realizado:<br /><br />" \
                    "         Piso: {}<br />" \
                    "         Sala: {}<br />" \
                    "   Computador: {}<br />" \
                    "      Assunto: {}<br />" \
                    "    Descrição: {}<br /><br />" \
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
                    "</table></div></body></html>".format(name, floor, room, pc, subject, description, mail)

        email.send(msg)          

        ## Envia um e-mail de notificação para a equipe de suporte
        msg = Message('SUPORTE FATEC: Chamado de manutenção recebido!', recipients=['luisebf01@gmail.com'])
        msg.html = "<!DOCTYPE html><html><body>" \
                "<div style=""font-family:'Segoe UI', Calibri, Arial, Helvetica; font-size: 14px; max-width: 762px;"">" \
                    "Fala Suporte Alpha, Beleza?<br /><br />" \
                    "Acabaram de abrir uma solicitação de suporte, e as informações seguem abaixo:<br /><br />" \
                    "  Solicitante: {}<br />" \
                    "       E-mail: {}<br />" \
                    "         Piso: {}<br />" \
                    "         Sala: {}<br />" \
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
                    "</table></div></body></html>".format(name, mail, floor, room, pc, subject, description)

        ## Se houver uma imagem na solicitação, anexa no e-mail para a equipe de suporte
        global tempFilename, tempEvent
        if tempEvent:
            extension = tempFilename.rsplit('.', 1)[1].lower()
            filePath = os.getcwd().replace('\\', '/')+'/'+UPLOAD_FOLDER+'/'+tempFilename
            with app.open_resource(filePath) as fp:
                msg.attach("Image."+extension, "image/"+extension, fp.read())
            tempFilename = ''
            tempEvent = False

        email.send(msg)        

        ## Faz o registro da solicitação no banco de dados
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

@app.route('/faq')
def faq():
    return render_template('faq.html')

@app.route('/upload_file', methods=('POST',))
def upload_file():
    file = request.files['file']        
    if allowed_file(file.filename):
        filename = secure_filename(file.filename)
        file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        global tempFilename, tempEvent
        tempFilename = filename
        tempEvent = True
    return redirect(url_for('create_request'))

@app.route('/monitorFaq')
def monitor():
    return render_template('monitorFaq.html')

@app.route('/mouseFaq')
def mouse():
    return render_template('mouseFaq.html')

@app.route('/tecladoFaq')
def teclado():
    return render_template('tecladoFaq.html')

@app.route('/modemFaq')
def modem():
    return render_template('modemFaq.html')

@app.route('/conexaoFaq')
def conexao():
    return render_template('conexaoFaq.html')

@app.route('/appFaq')
def appFaq():
    return render_template('appFaq.html')

@app.route('/soFaq')
def soFaq():
    return render_template('soFaq.html')



def get_db_connection():
    conn = sqlite3.connect('database.db')    
    conn.row_factory = sqlite3.Row
    return conn

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS 

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

""" # O CÓDIGO ABAIXO SERVE PARA GERAR THUMBNAILS DOS ARQUIVOS UPADOS
from PIL import Image
sizes = [(120,120), (720,720), (1600,1600)]
files = ['a.jpg','b.jpg','c.jpg']

for image in files:
    for size in sizes:
        im = Image.open(image)
        im.thumbnail(size)
        im.save("thumbnail_%s_%s" % (image, "_".join(size))) """

@app.route('/refresh_layout', methods=['GET','POST'])
def refresh_layout():
    #floor = request.form.get('floor')
    #room = request.form.get('room')

    conn = get_db_connection()
    slot_info = conn.execute('SELECT \
                                    monitor_config_id, \
                                    monitor_status_id, \
                                    computer_config_id, \
                                    computer_status_id, \
                                    keyboard_config_id, \
                                    keyboard_status_id, \
                                    mouse_config_id, \
                                    mouse_status_id \
                                FROM \
                                    "'+room+'" \
                                WHERE \
                                    id = ?', (slot_id,)).fetchone()
    conn.close()
    return redirect(url_for('edit_layout', slot_info=slot_info))

@app.route('/consult_slot', methods=['GET','POST'])
def consult_slot(slot_id):
    
    #slot = request.form.get('slot')

    conn = get_db_connection()
    slot_info = conn.execute('SELECT \
                                    monitor_config_id, \
                                    monitor_status_id, \
                                    computer_config_id, \
                                    computer_status_id, \
                                    keyboard_config_id, \
                                    keyboard_status_id, \
                                    mouse_config_id, \
                                    mouse_status_id \
                                FROM \
                                    "'+room+'" \
                                WHERE \
                                    id = ?', (slot_id,)).fetchone()
    conn.close()
    return redirect(url_for('edit_layout', slot_info=slot_info))

@app.route('/add_slot', methods=['GET','POST'])
def add_slot(slot_id):

    #monitor = request.form.get('monitor')
    #computer = request.form.get('computer')
    #keyboard = request.form.get('keyboard')
    #mouse = request.form.get('mouse')

    conn = get_db_connection()
    conn.execute('UPDATE \
                        [room_xxx] \
                    SET \
                        monitor_config_id = ?, \
                        monitor_status_id = ?, \
                        computer_config_id = ?, \
                        computer_status_id = ?, \
                        keyboard_config_id = ?, \
                        keyboard_status_id = ?, \
                        mouse_config_id = ?, \
                        mouse_status_id = ? \
                    WHERE \
                        id = ?', 
                        (monitor_config, 'OK', computer_config, 'OK', keyboard_config, 'OK', mouse_config, 'OK', slot_id))
    conn.commit()
    conn.close()
    return redirect(url_for('edit_layout'))

@app.route('/edit_slot', methods=['GET','POST'])
def edit_slot(slot_id):

    #monitorConfig = request.form.get('monitorConfig')
    #computerConfig = request.form.get('computerConfig')
    #keyboardConfig = request.form.get('keyboardConfig')
    #mouseConfig = request.form.get('mouseConfig')
    #monitorStatus = request.form.get('monitorStatus')
    #computerStatus = request.form.get('computerStatus')
    #keyboardStatus = request.form.get('keyboardStatus')
    #mouseStatus = request.form.get('mouseStatus')

    conn = get_db_connection()
    conn.execute('UPDATE \
                        [room_xxx] \
                    SET \
                        monitor_config_id = ?, \
                        monitor_status_id = ?, \
                        computer_config_id = ?, \
                        computer_status_id = ?, \
                        keyboard_config_id = ?, \
                        keyboard_status_id = ?, \
                        mouse_config_id = ?, \
                        mouse_status_id = ? \
                    WHERE \
                        id = ?', 
                        (monitor_config, 'OK', computer_config, 'OK', keyboard_config, 'OK', mouse_config, 'OK', slot_id))
    conn.commit()
    conn.close()
    return redirect(url_for('edit_layout'))

@app.route('/delete_slot', methods=['GET','POST'])
def delete_slot(slot_id):

    #monitor = request.form.get('monitor')
    #computer = request.form.get('computer')
    #keyboard = request.form.get('keyboard')
    #mouse = request.form.get('mouse')

    conn = get_db_connection()
    conn.execute('UPDATE \
                        [room_xxx] \
                    SET \
                        monitor_config_id = ?, \
                        monitor_status_id = ?, \
                        computer_config_id = ?, \
                        computer_status_id = ?, \
                        keyboard_config_id = ?, \
                        keyboard_status_id = ?, \
                        mouse_config_id = ?, \
                        mouse_status_id = ? \
                    WHERE \
                        id = ?', 
                        (monitor_config, 'OK', computer_config, 'OK', keyboard_config, 'OK', mouse_config, 'OK', slot_id))
    conn.commit()
    conn.close()
    return redirect(url_for('edit_layout'))