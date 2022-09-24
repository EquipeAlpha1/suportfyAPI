from traceback import print_tb
from app import app
from flask import Flask
from flask import render_template
from flask import request
from flask import flash
from flask import redirect
from flask_mail import Mail
from flask_mail import Message

app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = '465'
app.config['MAIL_DEFAULT_SENDER'] = 'Grupo Alpha - API <ads.2sem.2022@gmail.com>'
app.config['MAIL_USERNAME'] = 'ads.2sem.2022@gmail.com'
app.config['MAIL_PASSWORD'] = 'szlfrwtumwhlwwrm' # ESSA É UMA 'SENHA DE APP' GERADA NAS CONFIGURAÇÕES DE SEGURANÇA DO GOOGLE SÓ PARA ENVIOS DE EMAIL PELO FLASK
app.config['MAIL_USE_TLS'] = False
app.config['MAIL_USE_SSL'] = True
email = Mail(app)

@app.route('/', methods=['GET','POST'])
@app.route('/home', methods=['GET','POST'])
def home():
    '''if request.method == 'POST':
        name = request.form.get('name') # Aonde tem 'name' entra o nome da váriavel, que está dentro do dicionário 'data' do jQuery.js
        mail = request.form.get('mail')
        pc = request.form.get('pc')
        subject = request.form.get('subject')
        description = request.form.get('description')
        if name != '' and mail != '' and pc != '' and subject != '' and description != '':
            ## Envia um e-mail para o usuário
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
            email.send(msg)'''
    return render_template('content.html')