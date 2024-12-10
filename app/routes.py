from flask import Blueprint, render_template, redirect, url_for, request, flash
from connect import create_connection

# Create a blueprint for modular routing
routes = Blueprint('routes', __name__)

@routes.route('/')
def index():
    return render_template('home.html')

@routes.route('/dokter')
def dokter():
    # Get the current page number from the query string (default to page 1)
    page = request.args.get('page', 1, type=int)
    per_page = 10  # Number of items per page
    
    # Calculate the starting row for the query (offset)
    offset = (page - 1) * per_page
    
    # Get a connection to the database
    conn = create_connection()
    
    if conn:
        # Create a cursor from the connection
        cursor = conn.cursor()
        
        # Execute a query with pagination using OFFSET and FETCH NEXT
        cursor.execute('''
            SELECT * FROM dokter
            ORDER BY id_dokter  -- or any other column for sorting
            OFFSET ? ROWS
            FETCH NEXT ? ROWS ONLY
        ''', (offset, per_page))

        # cursor.execute('SELECT * FROM dokter')
        
        # Fetch the results
        table = cursor.fetchall()
        
        # Get the total count of rows to calculate the number of pages
        cursor.execute('SELECT COUNT(*) FROM dokter')
        total_count = cursor.fetchone()[0]
        
        # Close the cursor and connection
        cursor.close()
        conn.close()
        
        # Calculate total number of pages
        total_pages = (total_count + per_page - 1) // per_page
        
        # Pass the results, total pages, and current page to the template
        return render_template('dokter.html', table=table, total_pages=total_pages, current_page=page)
    else:
        return render_template('dokter.html', table=None)

@routes.route('/dokter/create', methods=['GET', 'POST'])
def create_dokter():
    # Handle the form submission when the method is POST
    if request.method == 'POST':
        # properti input digunakan disini
        dokter_name = request.form['nama_dokter']
        
        # Get a connection to the database
        conn = create_connection()
        
        # Check if the connection was successful
        if conn:
            cursor = conn.cursor()
            try:
                # Insert the new dokter into the database
                cursor.execute('INSERT INTO dokter (nama_dokter) VALUES (?)', (dokter_name))
                conn.commit()  # Commit the transaction
                
                # Redirect to the dokter list with a success message
                flash('dokter added successfully!', 'success')
                return redirect(url_for('routes.dokter'))
            except Exception as e:
                flash(f'Error: {str(e)}', 'danger')  # Flash error message
            finally:
                cursor.close()
                conn.close()
        
        flash('Failed to connect to the database', 'danger')  # Error if connection failed

    # Render the form for GET request
    return render_template('createDokter.html')

@routes.route('/dokter/update/<id_dokter>', methods=['GET', 'POST'])
def update_dokter(id_dokter):
    conn = create_connection()
    if conn:
        cursor = conn.cursor()
        try:
            if request.method == 'POST':
                # Get updated data from the form
                new_name = request.form['nama_dokter']

                # Update the dokter in the database
                cursor.execute('UPDATE dokter SET nama_dokter = ? WHERE id_dokter = ?', (new_name, id_dokter))
                conn.commit()

                flash('Table A updated successfully!', 'success')
                return redirect(url_for('routes.dokter'))

            # For GET request, fetch current data to pre-fill the form
            cursor.execute('SELECT nama_dokter FROM dokter WHERE id_dokter = ?', (id_dokter))
            table = cursor.fetchone()
            if not table:
                flash('Table not found!', 'danger')
                return redirect(url_for('routes.dokter'))

            # Pass the current data to the form
            return render_template('editDokter.html', table={'nama_dokter': table[0]})
        except Exception as e:
            flash(f'Error: {str(e)}', 'danger')
        finally:
            cursor.close()
            conn.close()
    else:
        flash('Error: Unable to connect to the database.', 'danger')
        return redirect(url_for('routes.dokter'))


# @routes.route('/update')
# def update_dok():
#     return render_template('editDokter.html')

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








@routes.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404

















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