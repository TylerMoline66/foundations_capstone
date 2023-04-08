import os
import sys
sys.path.append('.')
from functions import get_current_time, search_for_users_first_or_last
from db_querys import view_comp_of_one_user, view_assess_for_user


def add_asess_to_comp():
    while True:
      adding_assess = input("\nAre you sure you would like to add new assessment results? (Y or N): ").lower()

      if adding_assess == 'n':
          os.system('clear')
          return

      user = search_for_users_first_or_last.search_by_name()
      user_id = user[0][0]

      assessment_check = view_assess_for_user.by_id(user_id)

      print(f"{'User ID':<20}{'First Name':<20}{'Last Name':<20}{'Assessment ID':<20}{'Assessment Type':<20}")
      print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'---------':<20}{'-----':<20}{'----------':<20}")
      for i in assessment_check:
        print(f"{i[0]:<20}{i[1]:<20}{i[2]:<20}{i[3]:<20}{i[4]:<20}")
        print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'---------':<20}{'-----':<20}{'----------':<20}")
              

      input()



        
    # options = ['Data types', 'Variables', 'Functions','Boolean logic', "Conditionals", "Loops", 'Data structures', 'Lists', 'Dictionaries', 'Working with files', 'Exception handling', 'Quality Assurance(QA)', 'Object-oriented programming', 'Recursion', 'Databases']
          
    # print("\nCompetency list\n---------------------------\n")
    # for i, val in enumerate(options, start=1):
    #   print(f"{i}. {val}")
    # print('\n---------------------------\n')

    # compy = input('What competency would you like to search by? (SELECT BY NUMBER): ').lower()
    
    # if compy.isdigit() == False:
    #     print("Please select a valid input")
    #     input("Press enter to start over")
    #     continue
    # elif int(compy) > len(options):
    #     print("Please select a valid input")
    #     input("Press enter to start over")
    #     continue
        

        # more_options = ['Managers Test', 'Verbal test', 'Self taken test']
              
        # print("\nType of Assessment List\n---------------------------\n")
        # for i, val in enumerate(more_options, start=1):
        #   print(f"{i}. {val}")
        # print('\n---------------------------\n')

        # assess= input('\nWhat is the name of the new assessment you want to add (SELECT BY NUMBER): ')

        # if assess.isdigit() == False:
        #     print("Please select a valid input")
        #     input("Press enter to start over")
        #     continue
        # elif int(assess) > len(more_options):
        #     print("Please select a valid input")
        #     input("Press enter to start over")
        #     continue
        # elif assess == "1":
        #     assess_val = "manager_test"
        # elif assess == "2":
        #     assess_val = "verbal_test"
        # elif assess == "3":
        #     assess_val = "self_taken_test"

        # add_new_comp = input(f'\nAre you sure you would like to add ---{assess_val}---?(Y or N or [Q]uit): ').lower()
                
        # if add_new_comp == 'y':
        #     time = get_current_time.get_date()
        #     add_assess_to_comp_query.add_comp(compy, assess_val, time)
        #     print(f"\nYour assessment was added to the company database.")
        #     input("\n--> Press enter to return to main menu")
        #     os.system('clear')
        #     return 
        # elif add_new_comp == 'q':
        #     break
        # else:
        #     print('Ok try again')