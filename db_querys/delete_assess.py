import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def remove_assess(id):
  
  query = 'DELETE FROM Assessment_results WHERE result_id = ?'

  cursor.execute(query, (id,))
  connection.commit()