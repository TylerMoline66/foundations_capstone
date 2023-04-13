import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# ------------------------------SEARCH ALL CUSTOMERS QUERY------------------------------
def user_and_comp(comp):
  query = '''
SELECT *
FROM Users
JOIN Assessment_results
ON Users.user_id = Assessment_results.user_id
JOIN Assessment
ON Assessment_results.assess_id = Assessment.assess_id
JOIN Competencies
ON Assessment.comp_id = Competencies.comp_id
WHERE Competencies.comp_id=?;
'''
  rows = cursor.execute(query, (comp,)).fetchall()
  return rows
