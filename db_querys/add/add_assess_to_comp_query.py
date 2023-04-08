import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

def add_comp(comp, assess, date):
  values = [comp, assess, date]
  
  query = 'INSERT into Assessment (comp_id, assessment_name, date_created) values (?, ?, ?)'

  cursor.execute(query, values)
  connection.commit()