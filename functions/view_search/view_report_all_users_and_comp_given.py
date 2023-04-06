import sys
sys.path.append('.')
from db_querys import view_user_and_comp_given
import os


def search_user_and_comp():
      while True:
        os.system('clear')
        options = ['Data types', 'Variables', 'Functions','Boolean logic', "Conditionals", "Loops", 'Data structures', 'Lists', 'Dictionaries', 'Working with files', 'Exception handling', 'Quality Assurance(QA)', 'Object-oriented programming', 'Recursion', 'Databases']

          
              
        print("\nCompetency list\n---------------------------\n")
        for i, val in enumerate(options, start=1):
          print(f"{i}. {val}")
        print('\n---------------------------\n')

        compy = input('What competency would you like to search by? select by number (or Q to Quit): ').lower()


        if compy == "q":
           os.system('clear')
           return
        elif compy == '':
           print("Please select a valid input")
           input('Press enter to start over')

        elif int(compy) > len(options):
            print("Please select a valid input")
            input('Press enter to start over')

        else:
            results = view_user_and_comp_given.user_and_comp(compy)
            print()
            print(f"{'User ID':<20}{'First Name':<20}{'Last Name':<20}{'Hire Date':<20}{'Score':<20}{'Date Taken':<20}")
            print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'---------':<20}{'-----':<20}{'----------':<20}")
            for i in results:
              print(f"{i[0]:<20}{i[1]:<20}{i[2]:<20}{i[7]:<20}{i[13]:<20}{i[14]:<20}")
              print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'---------':<20}{'-----':<20}{'----------':<20}")
              
            input('\nPress enter to check another report')