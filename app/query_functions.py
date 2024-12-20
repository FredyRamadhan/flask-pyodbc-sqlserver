from flask import Blueprint, render_template, redirect, url_for, request, flash
from connect import create_connection

def create(table_name, column, data):
    conn = create_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("insert into ? (?) values (?)", (table_name, column, data))
        except Exception as e:
            flash(f'Error: {str(e)}', 'danger')
        finally:
            cursor.close()
            conn.close()
    else:
        cursor.close()
        conn.close()
        return None


def insert_dokter(nama_dokter, spesialisasi, telp_dokter, jadwal_praktik):
    conn = create_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = '?', @spesialisasi = '?', @telp_dokter = '?', @jadwal_praktik = '?';", (nama_dokter, spesialisasi, telp_dokter, jadwal_praktik))
        except Exception as e:
            flash(f'Error: {str(e)}', 'danger')
        finally:
            cursor.close()
            conn.close()
    else:
        cursor.close()
        conn.close()
        return None

def select(query):
    conn = create_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute(query)
            table = cursor.fetchall()
            return table
        except Exception as e:
            flash(f'Error: {str(e)}', 'danger')
        finally:
            cursor.close()
            conn.close()
    else:
        return None

def update(data_id, value1):
    conn = create_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("UPDATE dokter SET nama_dokter = ? WHERE id_dokter = ?", (value1, data_id))
            conn.commit()
            flash('Table updated successfully!', 'success')
            table = cursor.fetchall()
            return table
        except Exception as e:
            flash(f'Error: {str(e)}', 'danger')
        finally:
            cursor.close()
            conn.close()
    else:
        cursor.close()
        conn.close()
        return None

def delete(table_name, column_name, data_id):
    conn = create_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("delete from ? WHERE ? = '?'", (table, column, data))
            conn.commit()
            flash('Table updated successfully!', 'success')
        except Exception as e:
            flash(f'Error: {str(e)}', 'danger')
        finally:
            cursor.close()
            conn.close()
    else:
        cursor.close()
        conn.close()
        return None

def other_queries(query):
    conn = create_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute(query)
            return None
        except Exception as e:
            flash(f'Error: {str(e)}', 'danger')
        finally:
            cursor.close()
            conn.close()
    else:
        return None