from flask import Blueprint, render_template, redirect, url_for, request, flash
from connect import create_connection
from app.query_functions import select, insert_update_queries

routes = Blueprint('routes', __name__)

# ROUTE DASHBOARD
@routes.route('/')
def index():
    conn = create_connection()
    if conn:
        cursor = conn.cursor()
        cursor.execute('''
            SELECT TOP 1 nama_obat, stok 
            FROM obat
            ORDER BY stok DESC;
        ''')
        stokObat = cursor.fetchone()  # Get the first row as a tuple

        cursor.execute('''
            SELECT count(id_dokter) as jumlah
            FROM dokter
            where spesialisasi = 'umum'
        ''')
        dokterUmum = cursor.fetchone()
        
        cursor.execute('''
            SELECT count(id_dokter) as jumlah
            FROM dokter
            where spesialisasi = 'kandungan'
        ''')
        dokterKandungan = cursor.fetchone()
        
        cursor.execute('''
            SELECT count(id_dokter) as jumlah
            FROM dokter
            where spesialisasi = 'anak'
        ''')
        dokterAnak = cursor.fetchone()

        cursor.execute('''
            SELECT avg(biaya) as avgbiaya
            FROM pemeriksaan
        ''')
        avgBiaya = cursor.fetchone()

        cursor.execute('''
            SELECT count(id_ruangan) as jmlRuangan
            FROM ruangan
        ''')
        jmlRuangan = cursor.fetchone()


        cursor.close()
        conn.close()
        return render_template('dashboard.html', 
            stokObat=stokObat, 
            dokterUmum = dokterUmum, 
            dokterKandungan = dokterKandungan,
            avgBiaya=avgBiaya,
            jmlRuangan=jmlRuangan)
    else:
        return render_template('dashboard.html', stokObat=None)


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
def delete_dokter(id_dokter):
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
        alamat = request.form['alamat']
        no_hp = request.form['no_hp']
        id_petugas = request.form['id_petugas']

        insert_update_queries(f"EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = '{nama_pasien}', @keluhan = '{keluhan}', @jenis_kelamin = '{jenis_kelamin}', @tanggal_lahir = '{tanggal_lahir}', @alamat = '{alamat}', @no_hp = '{no_hp}', @id_petugas = '{id_petugas}';")
    return render_template('insert_dokter.html')

@routes.route('/pasien/update/<id_pasien>', methods=['GET', 'POST'])
def update_pasien(id_pasien):
    if request.method == 'POST':
        nama_pasien = request.form['nama_pasien']
        keluhan = request.form['keluhan']
        tanggal_lahir = request.form['tanggal_lahir']
        jenis_kelamin = request.form['jenis_kelamin']
        alamat = request.form['alamat']
        no_hp = request.form['no_hp']
        id_petugas = request.form['id_petugas']

        other_update_queries(f'''update pasien set nama_pasien = '{nama_pasien}', keluhan = '{keluhan}', tanggal_lahir = '{tanggal_lahir}', jenis_kelamin = '{jenis_kelamin}', alamat = '{alamat}', no_hp = '{no_hp}', id_petugas = '{id_petugas}'  where id_pasien = '{id_pasien}' ''')
        return redirect(url_for('routes.pasien'))
    return render_template('update_pasien.html', table=table[0])

#DELETE pasien
@routes.route('/pasien/delete/<id_pasien>', methods=['POST'])
def delete_pasien(id_pasien):
    insert_update_queries(f"delete from pasien where id_pasien = '{id_pasien}'")
    
    return redirect(url_for('routes.pasien'))


#PEMERIKSAAN
@routes.route('/pemeriksaan')
def table_pemeriksaan():
    table = select("select * from pemeriksaan order by id_periksa")
    return render_template('table_pemeriksaan.html', table=table)
@routes.route('/pemeriksaan/filter/<filter_by>')
def filter_pemeriksaan(filter_by):
    if filter_by == 'umum':
        table = select('''
        select * from pemeriksaan p 
        join dokter d
        on p.id_dokter = d.id = dokter
        where d.spesialisasi = 'umum' ''')
    elif filter_by == 'gigi':
        table = select('''
        select * from pemeriksaan p 
        join dokter d
        on p.id_dokter = d.id = dokter
        where d.spesialisasi = 'gigi' ''')
    elif filter_by == 'anak':
        table = select('''
        select * from pemeriksaan p 
        join dokter d
        on p.id_dokter = d.id = dokter
        where d.spesialisasi = 'anak' ''')

    return render_template('table_pemeriksaan.html', table=table)



@routes.route('/pemeriksaan/create', methods=['GET', 'POST'])
def create_pemeriksaan():
    conn = create_connection()
    if conn:
        cursor = conn.cursor()

        cursor.execute('''
            select id_dokter, nama_dokter from dokter order by id_dokter
        ''')
        option_dokter = cursor.fetchall() 

        cursor.execute('''
            select id_pasien, nama_pasien from pasien order by id_pasien
        ''')
        option_pasien = cursor.fetchall() 
        
        cursor.execute('''
            select id_ruangan, nama_ruangan from ruangan order by id_ruangan
        ''')
        option_ruangan = cursor.fetchall() 
        cursor.close()
        conn.close()
        return render_template('insert_pemeriksaan.html', option_dokter = option_dokter, option_pasien = option_pasien, option_ruangan = option_ruangan)
    
    else:
        return render_template('insert_pemeriksaan.html')

@routes.route('/pemeriksaan/create/commit', methods=['POST'])
def create_pem_commit():
    if request.method == 'POST':
        id_dokter = request.form['id_dokter']
        id_pasien = request.form['id_pasien']
        id_ruangan = request.form['id_ruangan']
        tanggal_periksa = request.form['tanggal_periksa']
        diagnosa = request.form['diagnosa']
        biaya = request.form['biaya']
    insert_update_queries(f"EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_6', @id_pasien = 'PAS_1', @id_ruangan = '{id_ruangan}', @tanggal_periksa = '{tanggal_periksa}', @diagnosa = '{diagnosa}', @biaya = {biaya};")
    return redirect(url_for(routes.table_pemeriksaan))


#RESEP
@routes.route('/resep')
def table_resep():
    table = select("select * from resep order by id_resep")
    return render_template('table_resep.html', table=table)

#OBAT
@routes.route('/obat')
def table_obat():
    table = select("select * from obat order by id_obat")
    return render_template('table_obat.html', table=table)


@routes.route('/ruangan')
def table_ruangan():
    table = select("select * from ruangan order by id_ruangan")
    return render_template('table_ruangan.html', table=table)  

@routes.route('/admin')
def table_admin():
    table = select("select * from petugas_admin order by id_petugas")
    return render_template('table_admin.html', table=table)