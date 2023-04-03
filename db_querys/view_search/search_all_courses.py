import sqlite3
connection = sqlite3.connect('competency_info.db')
cursor = connection.cursor()

# SEARCH ALL COURSES
def find_course():
  query = 'SELECT course_id, name, description FROM courses WHERE active = 1'
  rows = cursor.execute(query).fetchall()
  return rows