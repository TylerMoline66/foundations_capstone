import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH ALL CUSTOMERS QUERY------------------------------
def view_managers():
  query = '''
SELECT user_id, first_name, last_name FROM Users WHERE user_type = 0;
'''
  rows = cursor.execute(query).fetchall()
  return rows