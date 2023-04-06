import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH BY FIRST NAME------------------------------
def search_by_first_name(first_name):
  query = 'SELECT * FROM Users WHERE first_name LIKE ?;'
  rows = cursor.execute(query, (first_name,)).fetchall()
  return rows