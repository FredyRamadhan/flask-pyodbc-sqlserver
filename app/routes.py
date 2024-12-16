from flask import Blueprint, render_template, redirect, url_for, request, flash
from connect import create_connection
from app.query_functions import create, select, update, delete, other_queries

routes = Blueprint('routes', __name__)



@routes.route('/')
def index():
    return render_template('home.html')



@routes.route('/dokter')
def dokter():
    table = select('''
        Select * from dokter
        order by id_dokter
        ''')
    return render_template('dokter.html', table=table)



@routes.route('/dokter/by_spesialisasi')
def dokter_by_sp():
    table = select('''
        select * from dokter
        where spesialisasi = 'umum'
        order by id_dokter''')
    return render_template('dokter.html', table=table)



@routes.route('/dokter/create', methods=['GET', 'POST'])
def create_dokter():
    if request.method == 'POST':
        id_dokter = request.form['id_dokter']
        nama_dokter = request.form['nama_dokter']
        spesialisasi = request.form['spesialisasi']
        telp_dokter = request.form['telp_dokter']
        jadwal_praktik = request.form['jadwal_praktik']
        
        data = "'" + "', '".join([id_dokter, nama_dokter, spesialisasi, telp_dokter, jadwal_praktik]) + "'"
        columns = ", ".join(['id_dokter', 'nama_dokter', 'spesialisasi', 'telp_dokter', 'jadwal_praktik'])

        create('dokter', columns, data)
    return render_template('createDokter.html')



@routes.route('/dokter/update/<id_dokter>', methods=['GET', 'POST'])
def update_dokter(id_dokter):
    if request.method == 'POST':
        new_name = request.form['nama_dokter']
        update(id_dokter, new_name)
        return redirect(url_for('routes.dokter'))
    table = select("select nama_dokter from dokter where id_dokter = 'd001'")
    return render_template('editDokter.html', table=table[0])



@routes.route('/dokter/delete/<id_dokter>', methods=['POST'])
def delete_continent(id_dokter):
    # Get a connection to the database
    conn = create_connection()
    
    # Check if the connection was successful
    if conn:
        cursor = conn.cursor()
        try:
            # Delete the dokter from the database
            cursor.execute('DELETE FROM dokter WHERE id_dokter = ?', (id_dokter))
            conn.commit()  # Commit the transaction
            
            # Redirect to the dokter list with a success message
            flash('Table A deleted successfully!', 'success')
        except Exception as e:
            flash(f'Error: {str(e)}', 'danger')
        finally:
            cursor.close()
            conn.close()  # Ensure the connection is closed
    else:
        flash('Error: Unable to connect to the database.', 'danger')
    
    return redirect(url_for('routes.dokter'))




@routes.route('/dokter/spesialisasi', methods=[ 'POST' ])
def filter():
    column = request.form('kolom_filter')
    conn = create_connection()
    if conn:
        cursor = conn.cursor()
        try:
            cursor.execute('SELECT * FROM dokter WHERE spesialisasi = ?', (column))
            conn.commit()
            flash('filter berdasarkan spesialisasi')
        except Exception as e:
            flash(f'Error: {str(e)}', 'danger')
        finally:
            cursor.close()
            conn.close()
    else:
        flash('Error: unable to connect to the database', 'danger')
    return redirect(url_for('routes.dokter'))


@routes.route('/testestes')
def testestes():
    other_queries('''
                                                     
        ''')