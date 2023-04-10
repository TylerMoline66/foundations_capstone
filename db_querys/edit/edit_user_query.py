import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def edit_user(value):
  values = [value[1], value[2], value[3], value[4], value[5], value[6], value[7], value[8], value[0]]
  

  query = '''
  UPDATE Users 
  SET first_name = ?, last_name = ?, phone = ?, email = ?, password = ?, date_created = ?, hire_date = ?, user_type = ? 
  WHERE user_id = ?;
  '''

  cursor.execute(query, values)
  connection.commit()