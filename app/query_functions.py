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

def insert_update_queries(query):
    conn = create_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute(query)
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
