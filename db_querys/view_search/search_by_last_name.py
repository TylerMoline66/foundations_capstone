import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH BY FIRST NAME------------------------------
def search_by_last_name(last_name):
  query = 'SELECT * FROM Users WHERE last_name LIKE ?;'
  rows = cursor.execute(query, (last_name,)).fetchall()
  return rows