import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# FIND ALL INACTIVE PEOPLE
def find_all_inactive():
  query = 'SELECT person_id, first_name, last_name FROM people WHERE active = 0 ORDER BY first_name'
  rows = cursor.execute(query).fetchall()
  return rows