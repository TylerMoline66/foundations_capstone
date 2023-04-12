import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH COMPETENCY NAME QUERY------------------------------
def user_comp_results(id): 
  query = 'SELECT assessment_name FROM Assessment WHERE assess_id = ?'
  rows = cursor.execute(query, (id,)).fetchall()
  return rows

def all_comp(id): 
  query = 'SELECT * FROM competencies WHERE comp_id = ?'
  rows = cursor.execute(query, (id,)).fetchall()
  return rows