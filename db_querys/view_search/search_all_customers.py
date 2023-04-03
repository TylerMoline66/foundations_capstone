import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH ALL CUSTOMERS QUERY------------------------------
def find_all():
  query = 'SELECT person_id, first_name, last_name FROM people WHERE active = 1 ORDER BY first_name'
  rows = cursor.execute(query).fetchall()
  return rows