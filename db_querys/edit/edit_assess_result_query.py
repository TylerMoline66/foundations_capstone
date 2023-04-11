import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def edit_assess(value):
  values = [value[1], value[2], value[3], value[4], value[5], value[0]]
  

  query = '''
  UPDATE Assessment_results
  SET user_id = ?, assess_id = ?, score = ?, date_taken = ?, manager_id = ?
  WHERE result_id = ?;
  '''

  cursor.execute(query, values)
  connection.commit()