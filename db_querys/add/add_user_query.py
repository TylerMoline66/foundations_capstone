import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def add_user(value):
  values = [value[0], value[1], value[2], value[3], value[4], value[5], value[6], value[7]]

  query = 'INSERT into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type) values (?, ?, ?, ?, ?, ?, ?, ?)'

  cursor.execute(query, values)
  connection.commit()

