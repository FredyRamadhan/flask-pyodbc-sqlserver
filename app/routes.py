from flask import Blueprint, render_template, redirect, url_for, request, flash
from connect import create_connection
from app.query_functions import select, insert_update_queries, select_keep_open

routes = Blueprint('routes', __name__)

# ROUTE DASHBOARD
@routes.route('/')
def index():
    conn = create_connection()
    if conn:
        cursor = conn.cursor()
        cursor.execute('''
            SELECT 
                (SELECT TOP 1 nama_obat FROM obat ORDER BY stok DESC) AS stokObat,
                (SELECT COUNT(id_dokter) FROM dokter WHERE spesialisasi = 'umum') AS dokterUmum,
                (SELECT COUNT(id_dokter) FROM dokter WHERE spesialisasi = 'kandungan') AS dokterKandungan,
                (SELECT COUNT(id_dokter) FROM dokter WHERE spesialisasi = 'anak') AS dokterAnak,
                (SELECT COUNT(id_dokter) FROM dokter WHERE spesialisasi = 'THT') AS dokterTHT,
                (SELECT COUNT(id_dokter) FROM dokter WHERE spesialisasi = 'mata') AS dokterMata,
                (SELECT AVG(biaya) FROM pemeriksaan) AS avgBiaya,
                (SELECT COUNT(id_ruangan) FROM ruangan) AS jmlRuangan,
                (SELECT COUNT(id_pasien) FROM pasien) AS totalPasien
        ''')
        result = cursor.fetchone()

        cursor.close()
        conn.close()

        return render_template('dashboard.html', 
            stokObat=result[0], 
            dokterUmum=result[1], 
            dokterKandungan=result[2],
            dokterAnak=result[3],
            dokterTHT=result[4],
            dokterMata=result[5],
            avgBiaya=result[6],
            jmlRuangan=result[7],
            totalPasien=result[8]
        )

    return render_template('dashboard.html', 
        stokObat=None, 
        dokterUmum=None, 
        dokterKandungan=None,
        dokterAnak=None,
        dokterTHT=None,
        dokterMata=None,
        avgBiaya=None,
        jmlRuangan=None,
        totalPasien=None
    )



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

        insert_update_queries(f'''update dokter set nama_dokter = '{nama_dokter}', spesialisasi = '{spesialisasi}', telp_dokter = '{telp_dokter}', jadwal_praktik = '{jadwal_praktik}' where id_dokter = '{id_dokter}' ''')
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

#READ PASIEN
@routes.route('/pasien')
def pasien():
    table = select("select * from pasien order by id_pasien")
    return render_template('table_pasien.html', table=table)

#CREATE PASIEN
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
        return redirect(url_for('routes.pasien'))
    return render_template('insert_pasien.html')

#UPDATE PASIEN
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

        insert_update_queries(f'''update pasien set 
            nama_pasien = '{nama_pasien}', 
            keluhan = '{keluhan}', 
            tanggal_lahir = '{tanggal_lahir}', 
            jenis_kelamin = '{jenis_kelamin}', 
            alamat = '{alamat}', 
            no_hp = '{no_hp}', 
            id_petugas = '{id_petugas}' 
            where id_pasien = '{id_pasien}' ''')
        return redirect(url_for('routes.pasien'))
    
    table = select(f"select * from pasien where id_pasien = '{id_pasien}'")
    option_petugas = select("SELECT id_petugas, nama_petugas FROM petugas_admin")
    return render_template('update_pasien.html', table=table[0], option_petugas=option_petugas)

#DELETE PASIEN
@routes.route('/pasien/delete/<id_pasien>', methods=['POST'])
def delete_pasien(id_pasien):
    insert_update_queries(f"delete from pasien where id_pasien = '{id_pasien}'")
    return redirect(url_for('routes.pasien'))


#PEMERIKSAAN

#READ PEMERIKSAAN
@routes.route('/pemeriksaan')
def pemeriksaan():
    table = select("select * from pemeriksaan order by id_periksa")
    return render_template('table_pemeriksaan.html', table=table)

#CREATE PEMERIKSAAN
@routes.route('/pemeriksaan/create', methods=['GET', 'POST'])
def create_pemeriksaan():
    if request.method == 'POST':
        id_dokter = request.form['id_dokter']
        id_pasien = request.form['id_pasien']
        id_ruangan = request.form['id_ruangan']
        tanggal_periksa = request.form['tanggal_periksa']
        diagnosa = request.form['diagnosa']
        biaya = request.form['biaya']
        
        insert_update_queries(f"EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = '{id_dokter}', @id_pasien = '{id_pasien}', @id_ruangan = '{id_ruangan}', @tanggal_periksa = '{tanggal_periksa}', @diagnosa = '{diagnosa}', @biaya = {biaya}")
        return redirect(url_for('routes.pemeriksaan'))
    option_dokter = select("SELECT id_dokter, nama_dokter FROM dokter")
    option_pasien = select("SELECT id_pasien, nama_pasien FROM pasien")
    option_ruangan = select("SELECT id_ruangan, nama_ruangan FROM ruangan")
    return render_template('insert_pemeriksaan.html', option_dokter=option_dokter,option_pasien=option_pasien, option_ruangan=option_ruangan)

#UPDATE PEMERIKSAAN
@routes.route('/pemeriksaan/update/<id_periksa>', methods=['GET', 'POST'])
def update_pemeriksaan(id_periksa):
    if request.method == 'POST':
        id_dokter = request.form['id_dokter']
        id_pasien = request.form['id_pasien']
        id_ruangan = request.form['id_ruangan']
        tanggal_periksa = request.form['tanggal_periksa']
        diagnosa = request.form['diagnosa']
        biaya = request.form['biaya']

        insert_update_queries(f'''update pemeriksaan set 
            id_dokter = '{id_dokter}', 
            id_pasien = '{id_pasien}', 
            id_ruangan = '{id_ruangan}', 
            tanggal_periksa = '{tanggal_periksa}', 
            diagnosa = '{diagnosa}', 
            biaya = {biaya} 
            where id_periksa = '{id_periksa}' ''')
        return redirect(url_for('routes.pemeriksaan'))
    
    table = select(f"select * from pemeriksaan where id_periksa = '{id_periksa}'")
    option_dokter = select("SELECT id_dokter, nama_dokter FROM dokter")
    option_pasien = select("SELECT id_pasien, nama_pasien FROM pasien")
    option_ruangan = select("SELECT id_ruangan, nama_ruangan FROM ruangan")
    return render_template('update_pemeriksaan.html', table=table[0], option_dokter=option_dokter,option_pasien=option_pasien, option_ruangan=option_ruangan)

#DELETE PEMERIKSAAN
@routes.route('/pemeriksaan/delete/<id_periksa>', methods=['POST'])
def delete_pemeriksaan(id_periksa):
    insert_update_queries(f"delete from pemeriksaan where id_periksa = '{id_periksa}'")
    return redirect(url_for('routes.pemeriksaan'))

@routes.route('/pemeriksaan/filter/<filter_by>')
def filter_pemeriksaan(filter_by):
    if filter_by == 'umum':
        table = select('''
        select * from pemeriksaan p 
        join dokter d
        on p.id_dokter = d.id_dokter
        where d.spesialisasi = 'umum' ''')
    elif filter_by == 'gigi':
        table = select('''
        select * from pemeriksaan p 
        join dokter d
        on p.id_dokter = d.id_dokter
        where d.spesialisasi = 'gigi' ''')
    elif filter_by == 'anak':
        table = select('''
        select * from pemeriksaan p 
        join dokter d
        on p.id_dokter = d.id_dokter
        where d.spesialisasi = 'anak' ''')

    return render_template('table_pemeriksaan.html', table=table)


#RESEP

#READ RESEP
@routes.route('/resep')
def resep():
    table = select("select * from resep order by id_resep")
    return render_template('table_resep.html', table=table)

#CREATE RESEP
@routes.route('/resep/create', methods=['GET', 'POST'])
def create_resep():
    if request.method == 'POST':
        id_obat = request.form['id_obat']
        id_pasien = request.form['id_pasien']
        id_dokter = request.form['id_dokter']
        
        insert_update_queries(f"EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '{id_obat}', @id_pasien = '{id_pasien}', @id_dokter = '{id_dokter}'")
        return redirect(url_for('routes.resep'))
    option_obat = select("SELECT id_obat, nama_obat FROM obat")
    option_pasien = select("SELECT id_pasien, nama_pasien FROM pasien")
    option_dokter = select("SELECT id_dokter, nama_dokter FROM dokter")
    return render_template('insert_resep.html', option_obat=option_obat, option_pasien=option_pasien,option_dokter=option_dokter)

#UPDATE RESEP
@routes.route('/resep/update/<id_resep>', methods=['GET', 'POST'])
def update_resep(id_resep):
    if request.method == 'POST':
        id_obat = request.form['id_obat']
        id_pasien = request.form['id_pasien']
        id_dokter = request.form['id_dokter']

        insert_update_queries(f'''update resep set 
            id_obat = '{id_obat}', 
            id_pasien = '{id_pasien}', 
            id_dokter = '{id_dokter}' 
            where id_resep = '{id_resep}' ''')
        return redirect(url_for('routes.resep'))
    
    table = select(f"select * from resep where id_resep = '{id_resep}'")
    option_obat = select("SELECT id_obat, nama_obat FROM obat")
    option_pasien = select("SELECT id_pasien, nama_pasien FROM pasien")
    option_dokter = select("SELECT id_dokter, nama_dokter FROM dokter")
    return render_template('update_resep.html', table=table[0],option_obat=option_obat, option_pasien=option_pasien,option_dokter=option_dokter)

#DELETE RESEP
@routes.route('/resep/delete/<id_resep>', methods=['POST'])
def delete_resep(id_resep):
    insert_update_queries(f"delete from resep where id_resep = '{id_resep}'")
    return redirect(url_for('routes.resep'))

@routes.route('/resep/filter/<id_dokter>')
def resep_by_dokter(id_dokter):
    table = select(f'''
    select * from resep
    where id_dokter = '{id_dokter}'
    order by id_resep''')
    return render_template('table_resep.html', table=table)

#OBAT
@routes.route('/obat')
def table_obat():
    table = select("select * from obat order by id_obat")
    return render_template('table_obat.html', table=table)

#RUANGAN
@routes.route('/ruangan')
def table_ruangan():
    table = select("select * from ruangan order by id_ruangan")
    return render_template('table_ruangan.html', table=table)  

#PETUGAS ADMIN
@routes.route('/admin')
def table_admin():
    table = select("select * from petugas_admin order by id_petugas")
    return render_template('table_admin.html', table=table)

# ROUTE UNTUK FILTERING TABEL OBAT
@routes.route('/obat/by_nama')
def obat_by_nama():
    table = select('''
        select * from obat
        order by nama_obat''')
    return render_template('table_obat.html', table=table)

@routes.route('/obat/by_harga')
def obat_by_harga():
    table = select('''
        select * from obat
        order by harga desc''')
    return render_template('table_obat.html', table=table)

@routes.route('/obat/by_stok')
def obat_by_stok():
    table = select('''
        select * from obat
        order by stok desc''')
    return render_template('table_obat.html', table=table)