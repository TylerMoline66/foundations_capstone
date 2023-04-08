import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def add_comp(comp, date):
  values = [comp, date]
  
  query = 'INSERT into Competencies (comp_name, date_created) values (?, ?)'

  cursor.execute(query, values)
  connection.commit()