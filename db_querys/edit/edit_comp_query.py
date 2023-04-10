import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def edit_comp(value):
  values = [value[1], value[2], value[0]]
  

  query = '''
  UPDATE Competencies 
  SET comp_name = ?, date_created = ?
  WHERE comp_id = ?;
  '''

  cursor.execute(query, values)
  connection.commit()