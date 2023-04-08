import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH ALL CUSTOMERS QUERY------------------------------
def by_id(id):
  query = '''
SELECT Users.user_id, Users.first_name, Users.last_name, Assessment.assess_id, Assessment.assessment_name
FROM Users
JOIN Assessment_results ar
ON Users.user_id = ar.user_id
JOIN Assessment
ON ar.assess_id = Assessment.assess_id
WHERE Users.user_id = ?;
'''
  rows = cursor.execute(query, (id,)).fetchall()
  return rows

