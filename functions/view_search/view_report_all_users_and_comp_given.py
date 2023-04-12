import sys
sys.path.append('.')
from db_querys import view_user_and_comp_given
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
        elif compy == '':
           print("Please select a valid input")
           input('Press enter to start over')

        elif int(compy) > len(options):
            print("Please select a valid input")
            input('Press enter to start over')

        else:
            results = view_user_and_comp_given.user_and_comp(compy)
            print()
            print(f"{'User ID':<20}{'First Name':<20}{'Last Name':<20}{'Score':<20}{'Date Taken':<20}")
            print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'-----':<20}{'----------':<20}")
            export_set = []
            for i in results:
              export_list = [i[0], i[1], i[2], i[13], i[14]]
              export_set.append(export_list)
              print(f"{i[0]:<20}{i[1]:<20}{i[2]:<20}{i[13]:<20}{i[14]:<20}")
              print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'-----':<20}{'----------':<20}")


        export = input('\nWould you like to export these results? (Y or N): ').lower()

        
        if export == 'y':
           
          export_reports_csv.export_to_csv(export_set)
          print('\n-----Your results were saved to reports.csv-----')
          input('\nPress enter to search for another user or quit')
          continue
        else:
           input('\nPress enter to search for another user or quit')
           continue       