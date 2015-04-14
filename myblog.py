# encoding=utf-8
from flask import Flask,render_template,request,redirect, url_for
from lib.model import  db_session,engine
from datetime import *
import sys
reload(sys)
sys.setdefaultencoding('utf-8')


admin_name = 'admin'
admin_pass = 'admin'
app = Flask(__name__)

@app.route('/')
def index():
    result = db_session.execute('select * from aj_articles order by id desc limit 10 ', {})
    resultlist = result.fetchall()
    artlices=[]
    for row in resultlist:
        print '______________'
        rowinfo =  dict(zip(row.keys(), row.values()))
        artlices.append(rowinfo)
    return render_template('index.html', artlices=artlices)

@app.route('/detail/<int:id>')
def detail(id):
    result = db_session.execute('select * from aj_articles where id = :id', {'id':id})
    article = dict(result.first())
    return render_template('detail.html', item=article)

@app.route('/admin',methods=['POST', 'GET'])
def login():
    error = None
    if request.method == 'POST':
        username = request.form['username']
        userpass = request.form['userpass']
        if (username == admin_name) and (userpass == admin_pass):
            return redirect(url_for('post'))
        else:
            error = 'Invalid username/password'

    return render_template('login.html',error=error)


@app.route('/admin/post',methods=['POST', 'GET'])
def post():
    error = None
    author='aj'
    dt = datetime.now()
    posttime = dt.strftime('%Y-%m-%d %I:%M:%S')
    if request.method == 'POST':
        title = request.form['title']
        content = request.form['content']
        if title and content:
            db_session.execute('insert into aj_articles (title,content,posttime,author) values(:title,:content,:posttime,:author)', {'title':title,'content':content,'posttime':posttime,'author':author})
            db_session.commit()
            error = 'Post Success'
        else:
            error = 'Invalid username/password'

    return render_template('post.html',error=error)


if __name__ == '__main__':
    app.debug = True
    app.run()
