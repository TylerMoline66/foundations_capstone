import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()


def find_one(value):
  values = [value[0]] 

  query = 'SELECT * From Users WHERE email = ?'
  results =  cursor.execute(query, values).fetchall()
  return results 