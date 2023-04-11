import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def edit_assess(value):
  values = [value[1], value[2], value[3], value[0]]
  

  query = '''
  UPDATE Assessment 
  SET comp_id = ?, assessment_name = ?, date_created = ?
  WHERE assess_id = ?;
  '''

  cursor.execute(query, values)
  connection.commit()