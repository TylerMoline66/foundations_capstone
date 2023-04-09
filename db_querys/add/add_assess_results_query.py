import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def add_result(values):
  
  query = 'INSERT into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (?, ?, ?, ?, ?)'

  cursor.execute(query, values)
  connection.commit()