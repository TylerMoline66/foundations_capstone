import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH ALL CUSTOMERS QUERY------------------------------
def user_comp_results(id):
  query = 'SELECT assess_id, score FROM assessment_results WHERE user_id = ?'
  rows = cursor.execute(query, (id,)).fetchall()
  return rows