import sys
sys.path.append('.')
from db_querys import view_comp_of_one_user
import os
from functions import export_reports_csv

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
        
        if int(compy) > len(options):
           print('unusable input')
           input('Press enter to try again')
           continue

        select_user = input('\nHow would you like to search for a user? first name, last name or ID (F or L or I): ').lower()

        if select_user != 'f' and select_user != 'l' and select_user != 'i':
           print('Incorrect input')
           input('press enter to try again')
           continue
        elif select_user == 'f':
           first = input('\nPlease enter the users first name: ')
           result = view_comp_of_one_user.first_name_and_comp(first, compy)

        elif select_user == 'l':
           last = input('\nPlease enter the users last name: ')
           result = view_comp_of_one_user.last_name_and_comp(last, compy)

        elif select_user == 'i':
           user_id = input('\nPlease enter the users ID: ')
           result = view_comp_of_one_user.id_and_comp(user_id, compy)
           
        if result == []:
           print('Im sorry, there are no results that match your search')
           input('Press enter to try again')
           continue
        else:
           print(f"{'User ID':<20}{'First Name':<20}{'Last Name':<20}{'Hire Date':<20}{'Score':<20}{'Date Taken':<20}")
           print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'---------':<20}{'-----':<20}{'----------':<20}")
            
           print(f"{result[0][0]:<20}{result[0][1]:<20}{result[0][2]:<20}{result[0][7]:<20}{result[0][13]:<20}{result[0][14]:<20}")

        export = input('Would you like to export these results? (Y or N): ').lower()

        
        if export == 'y':
           export_reports_csv.export_to_csv([[result[0][0], result[0][1], result[0][2], result[0][7], result[0][13], result[0][14]]])
           print('\n-----Your results were saved to reports.csv-----')
           input('\nPress enter to search for another user or quit')
           continue
        else:
           input('\nPress enter to search for another user or quit')
           continue
              
