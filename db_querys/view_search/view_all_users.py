import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH ALL CUSTOMERS QUERY------------------------------
def view_all():
  query = 'SELECT * FROM Users WHERE active = 1'
  rows = cursor.execute(query).fetchall()
  return rows