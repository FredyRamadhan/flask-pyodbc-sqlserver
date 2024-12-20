from flask import Blueprint, render_template, redirect, url_for, request, flash
from connect import create_connection
from app.query_functions import select, insert_update_queries

routes = Blueprint('routes', __name__)

# ROUTE DASHBOARD
@routes.route('/')
def index():
    return render_template('dashboard.html')


# ROUTE UNTUK CRUD DOKTER

# READ
@routes.route('/dokter')
def dokter():
    table = select('''
        Select * from dokter
        order by id_dokter
        ''')
    return render_template('table_dokter.html', table=table)

# ROUTE UNTUK FILTERING TABEL DOKTER
@routes.route('/dokter/by_spesialisasi')
def dokter_by_sp():
    table = select('''
        select * from dokter
        where spesialisasi = 'umum'
        order by id_dokter''')
    return render_template('table_dokter.html', table=table)

# CREATE
@routes.route('/dokter/create', methods=['GET', 'POST'])
def create_dokter():
    if request.method == 'POST':
        nama_dokter = request.form['nama_dokter']
        spesialisasi = request.form['spesialisasi']
        telp_dokter = request.form['telp_dokter']
        jadwal_praktik = request.form['jadwal_praktik']
        
        insert_update_queries(f"EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = '{nama_dokter}', @spesialisasi = '{spesialisasi}', @telp_dokter = '{telp_dokter}', @jadwal_praktik = '{jadwal_praktik}'")
    return render_template('insert_dokter.html')



# UPDATE DOKTER
@routes.route('/dokter/update/<id_dokter>', methods=['GET', 'POST'])
def update_dokter(id_dokter):
    if request.method == 'POST':
        nama_dokter = request.form['nama_dokter']
        spesialisasi = request.form['spesialisasi']
        telp_dokter = request.form['telp_dokter']
        jadwal_praktik = request.form['jadwal_praktik']

        other_update_queries(f'''update dokter set nama_dokter = '{nama_dokter}', spesialisasi = '{spesialisasi}', telp_dokter = '{telp_dokter}', jadwal_praktik = '{jadwal_praktik}' where id_dokter = '{id_dokter}' ''')
        return redirect(url_for('routes.dokter'))
    table = select(f"select nama_dokter from dokter where id_dokter = '{id_dokter}'")
    return render_template('update_dokter.html', table=table[0])


#DELETE DOKTER
@routes.route('/dokter/delete/<id_dokter>', methods=['POST'])
def delete_continent(id_dokter):
    insert_update_queries(f"delete from dokter where id_dokter = '{id_dokter}'")
    
    return redirect(url_for('routes.dokter'))


