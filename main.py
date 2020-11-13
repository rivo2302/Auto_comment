import pymysql
from app import app
from config import mysql
from flask import jsonify
from flask import flash, request
@app.route('/list_film')
def get_list_parc():
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT nom_parc, province.nom_province,description_parc as description from parc join province on parc.id_province=province.id_province limit 12 ")
        empRows = cursor.fetchall()
        respone = jsonify(empRows)
        respone.status_code = 200
        return respone
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()


if __name__ == "__main__":
    app.run()
