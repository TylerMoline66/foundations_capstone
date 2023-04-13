import os
import sys
sys.path.append('.')
from functions import get_current_time
from db_querys import add_competency_query


def add_a_competency():
    while True:
        adding_comp = input("\nAre you sure you would like to add a new competency? (Y or N)").lower()

        if adding_comp == 'n':
            os.system('clear')
            return
        elif adding_comp != 'y':
            print('Invalid input')
            input('Press enter to try again')
            continue
        
        competency = input('\nWhat is the name of the new competency you want to add: ')


        add_new_comp = input(f'\n---{competency}---\n\nAre you sure you would like to add this competency?(Y or N or [Q]uit): ').lower()
                
        if add_new_comp == 'y':
            time = get_current_time.get_date()
            add_competency_query.add_comp(competency, time)
            print(f"{competency} was added to the company database.")
            input("--> Press enter to return to main menu")
            os.system('clear')
            return 
        elif add_new_comp == 'q':
            break
        else:
            print('Ok try again')