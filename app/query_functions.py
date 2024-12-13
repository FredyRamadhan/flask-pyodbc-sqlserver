from flask import Blueprint, render_template, redirect, url_for, request, flash
from connect import create_connection


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