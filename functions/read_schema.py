import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def create_schema(cursor):
    with open('db_querys/create_db.sql', 'r') as sql_query:
        my_query = sql_query.read()
    cursor.executescript(my_query)

create_schema(cursor)