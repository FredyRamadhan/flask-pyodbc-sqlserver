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

# ROUTE UNTUK FILTERING TABEL DOKTER
@routes.route('/dokter/by_spesialisasi')
def dokter_by_sp():
    table = select('''
        select * from dokter
        where spesialisasi = 'umum'
        order by id_dokter''')
    return render_template('table_dokter.html', table=table)


#PASIEN
@routes.route('/pasien')
def table_pasien():
    table = select("select * from pasien order by id_pasien")
    return render_template('table_pasien.html', table=table)


@routes.route('/pasien/create', methods=['GET', 'POST'])
def create_pasien():
    if request.method == 'POST':
        nama_pasien = request.form['nama_pasien']
        keluhan = request.form['keluhan']
        tanggal_lahir = request.form['tanggal_lahir']
        jenis_kelamin = request.form['jenis_kelamin']
        
        insert_update_queries(f"EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Andi', @keluhan = 'Demam tinggi', @jenis_kelamin = 'L', @tanggal_lahir = '2015-07-20', @alamat = 'Jl. Melati No. 5', @no_hp = '081234567890', @id_petugas = '';")
    return render_template('insert_dokter.html')


@routes.route('/obat')
def table_obat():
    table = select("select * from obat order by id_obat")
    return render_template('table_obat.html', table=table)
    
@routes.route('/ruangan')
def table_ruangan():
    table = select("select * from ruangan order by id_ruangan")
    return render_template('table_ruangan.html', table=table)
    
@routes.route('/pemeriksaan')
def table_pemeriksaan():
    table = select("select * from pemeriksaan order by id_pemeriksaan")
    return render_template('table_pemeriksaan.html', table=table)
    
@routes.route('/resep')
def table_resep():
    table = select("select * from resep order by id_resep")
    return render_template('table_resep.html', table=table)

@routes.route('/admin')
def table_admin():
    table = select("select * from petugas_admin order by id_petugas")
    return render_template('table_admin.html', table=table)