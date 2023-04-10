import os
import sys
sys.path.append('.')
from functions import get_current_time
from db_querys import add_assess_to_comp_query

def add_asess_to_comp():
    while True:
        adding_assess = input("\nAre you sure you would like to add a new assessment? (Y or N): ").lower()

        if adding_assess == 'n':
            os.system('clear')
            return
        
        options = ['Data types', 'Variables', 'Functions','Boolean logic', "Conditionals", "Loops", 'Data structures', 'Lists', 'Dictionaries', 'Working with files', 'Exception handling', 'Quality Assurance(QA)', 'Object-oriented programming', 'Recursion', 'Databases']
              
        print("\nCompetency list\n---------------------------\n")
        for i, val in enumerate(options, start=1):
          print(f"{i}. {val}")
        print('\n---------------------------\n')

        compy = input('What competency would you like to add an assessment for? (SELECT BY NUMBER): ').lower()
        
        if compy.isdigit() == False:
            print("Please select a valid input")
            input("Press enter to start over")
            continue
        elif int(compy) > len(options):
            print("Please select a valid input")
            input("Press enter to start over")
            continue

        assess= input('\nWhat is the name of the new assessment you want to add: ')

        add_new_comp = input(f'\nAre you sure you would like to add ---{assess}---?(Y or N or [Q]uit): ').lower()
                
        if add_new_comp == 'y':
            time = get_current_time.get_date()
            add_assess_to_comp_query.add_comp(compy, assess, time)
            print(f"\nYour assessment was added to the company database.")
            input("\n--> Press enter to return to main menu")
            os.system('clear')
            return 
        elif add_new_comp == 'q':
            break
        else:
            print('Ok try again')