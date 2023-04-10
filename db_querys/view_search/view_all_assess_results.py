import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH ALL CUSTOMERS QUERY------------------------------
def view_assess_results():
  query = '''
SELECT * FROM Assessment_results;
'''
  rows = cursor.execute(query).fetchall()
  return rows
