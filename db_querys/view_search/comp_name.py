import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH COMPETENCY NAME QUERY------------------------------
def user_comp_results(id): 
  query = 'SELECT comp_name FROM competencies WHERE comp_id = ?'
  rows = cursor.execute(query, (id,)).fetchall()
  return rows