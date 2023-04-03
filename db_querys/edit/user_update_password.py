import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def edit_user_password(password, user):
  values = [password, user]

  query = 'UPDATE Users SET password = ? WHERE user_id = ?'

  cursor.execute(query, values)
  connection.commit()