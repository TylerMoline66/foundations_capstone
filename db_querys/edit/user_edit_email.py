import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def edit_user_email(email, user):
  values = [email, user]

  query = 'UPDATE Users SET email = ? WHERE user_id = ?'

  cursor.execute(query, values)
  connection.commit()