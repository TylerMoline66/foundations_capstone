import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH ALL CUSTOMERS QUERY------------------------------
def id_and_comp(id, comp):
  query = '''
SELECT *
FROM Users, Assessment_results
WHERE Users.user_id = Assessment_results.user_id
AND Assessment_results.assess_id=?
AND Users.user_id = ?;
'''
  values = [comp, id]
  rows = cursor.execute(query, values).fetchall()
  return rows

def first_name_and_comp(first, comp):
  query = '''
SELECT *
FROM Users, Assessment_results
WHERE Users.user_id = Assessment_results.user_id
AND Assessment_results.assess_id=?
AND Users.first_name LIKE ?;
'''
  values = [comp, first]
  rows = cursor.execute(query, values).fetchall()
  return rows

def last_name_and_comp(last, comp):
  query = '''
SELECT *
FROM Users, Assessment_results
WHERE Users.user_id = Assessment_results.user_id
AND Assessment_results.assess_id=?
AND Users.last_name LIKE ?;
'''
  values = [comp, last]
  rows = cursor.execute(query, values).fetchall()
  return rows