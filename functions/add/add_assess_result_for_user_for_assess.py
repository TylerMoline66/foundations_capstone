import os
import sys
sys.path.append('.')
from functions import get_current_time, search_for_users_first_or_last
from db_querys import view_all_assessments, view_managers, add_assess_results_query


def add_asess_to_comp():
    while True:
      adding_assess = input("\nAre you sure you would like to add new assessment results? (Y or N): ").lower()

      if adding_assess == 'n':
          os.system('clear')
          return

      user = search_for_users_first_or_last.search_by_name()
      user_id = user[0][0]

      assessments= view_all_assessments.view_assessments()

      print(f"{'Assessment ID':<20}{'Competency ID':<20}{'Assessment Name':<50}{'Date Created':<20}")
      print(f"{'-------------':<20}{'-------------':<20}{'---------------':<50}{'-------------':<20}")
      for i in assessments:
        print(f"{i[0]:<20}{i[1]:<20}{i[2]:<50}{i[3]:<20}")
        print(f"{'-------------':<20}{'-------------':<20}{'---------------':<50}{'-------------':<20}")
              
      print('\nAbove are the assessments you can choose from\n')
      chosen_assess = input('What is the assessment ID you want to add? (MUST choose by ID to continue): ')

      if chosen_assess.isalpha():
         print("\nincorrect option\n")
         input("Press enter to try again")
         continue
      elif int(chosen_assess) > len(assessments):
        print("\nincorrect option\n")
        input("Press enter to try again")
        continue

      print('\nCompetencies are based on a scale from 0-4\n\n0 - No competency - Needs Training and Direction\n1 - Basic Competency - Needs Ongoing Support\n2 - Intermediate Competency - Needs Occasional Support\n3 - Advanced Competency - Completes Task Independently\n4 - Expert Competency - Can Effectively pass on this knowledge and can initiate optimizations\n')

      score = input('What did the user score on their assessment?')

      if score.isalpha():
         print("\nincorrect option\n")
         input("Press enter to try again")
         continue
      elif int(score) > 4:
        print("\nincorrect option\n")
        input("Press enter to try again")
        continue

      date = input('\nWas the assessment give today?(Y or N): ').lower()

      if date == 'y':
         date = get_current_time.get_date()
      else:
         date = input('\nPlease input the day it was taken (YYYY-MM-DD): ')

      managers = view_managers.view_managers()

      

      print(f"{'Managers ID':<20}{'First Name':<20}{'Last Name':<20}")
      print(f"{'-----------':<20}{'----------':<20}{'---------':<20}")
      for i in managers:
        print(f"{i[0]:<20}{i[1]:<20}{i[2]:<20}")
        print(f"{'-----------':<20}{'----------':<20}{'---------':<20}")

      manager_choice = input('Which manager gave the assessment? (SELECT BY ID): ')

      if manager_choice.isalpha():
         print("\nincorrect option\n")
         input("Press enter to try again")
         continue
      
      print(
      f'''
USER ID: {user_id}
ASSESSMENT ID: {chosen_assess}
SCORE: {score}
DATE TAKEN: {date}
MANAGER_ID: {manager_choice}
      ''')

      push_to_db = input("Would you like to push this assessment result to the database? (Y or N): ").lower()

      if push_to_db == "y":
         assessment_data = [user_id, chosen_assess, score, date, manager_choice]
         add_assess_results_query.add_result(assessment_data)
         print("Your result was added to the database")
         input("Press enter to return to main menu")
         os.system('clear')
         return
      else:
         continue