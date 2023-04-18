import sys
sys.path.append('.')
from db_querys import comp_name, edit_comp_query
import os


def edit_comp():
      while True:
        os.system('clear')

        options = ['Data types', 'Variables', 'Functions','Boolean logic', "Conditionals", "Loops", 'Data structures', 'Lists', 'Dictionaries', 'Working with files', 'Exception handling', 'Quality Assurance(QA)', 'Object-oriented programming', 'Recursion', 'Databases']
              
        print("\nCompetency list\n---------------------------\n")
        for i, val in enumerate(options, start=1):
          print(f"{i}. {val}")
        print('\n---------------------------\n')

        user_input = input('Which competency would you like to update? (SELECT BY NUMBER or [Q]uit): ').lower()


        if user_input == 'q':
            os.system('clear')
            return
        if user_input.isalpha():
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        elif user_input == '':
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        elif int(user_input) > len(options):
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        else:
            change_comp = comp_name.all_comp(user_input)
            change_comp = [change_comp[0][0], change_comp[0][1], change_comp[0][2]]
            print(f"\n{'Comp ID':<20}{'Comp Name':<20}{'Date Created':<20}")
            print(f"{'-------':<20}{'---------':<20}{'------------':<20}")
            print(f"{change_comp[0]:<20}{change_comp[1]:<20}{change_comp[2]:<20}")
            
            new_comp = input("\nWould you like to change \n1. Comp ID\n2. Comp name\n3. Date created\n-->")
            
            if new_comp.isalpha():
                print("\nInvalid input")
                input("Press enter to try again")
                continue
            elif new_comp == '':
                print("\nInvalid input")
                input("Press enter to try again")
                continue
            elif int(new_comp) > 3:
                print("\nInvalid input")
                input("Press enter to try again")
                continue

            new_comp_name = input("\nWhat would you like to change the input to? ")

            change_comp[int(new_comp) - 1] = new_comp_name

            edit_comp_query.edit_comp(change_comp)
            print('Your changes were added to the database')
            input('Press enter to continue')
            os.system('clear')
            return
            
