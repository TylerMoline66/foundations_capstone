import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH ALL CUSTOMERS QUERY------------------------------
def user_and_comp(comp):
  query = '''
SELECT *
FROM Users, Assessment_results
WHERE Users.user_id = Assessment_results.user_id
AND Assessment_results.assess_id=?;
'''
  rows = cursor.execute(query, (comp,)).fetchall()
  return rows