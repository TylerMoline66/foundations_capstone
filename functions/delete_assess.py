import sys
sys.path.append('.')
from db_querys import view_all_assess_results, delete_assess
import os


def delete_result():
    while True:
        print(f"{'Result ID':<20}{'User ID':<20}{'Assessment ID':<20}{'Score':<20}{'Date taken (Y-M-D)':<35}{'Manager ID':<20}")
        print(f"{'---------':<20}{'-------':<20}{'-------------':<20}{'-----':<20}{'------------------':<35}{'----------':<20}")

        assess_results = view_all_assess_results.view_assess_results()
        for i in assess_results:
            print(f"{i[0]:<20}{i[1]:<20}{i[2]:<20}{i[3]:<20}{i[4]:<35}{i[5]:<20}")
            print(f"{'---------':<20}{'-------':<20}{'-------------':<20}{'-----':<20}{'------------------':<35}{'----------':<20}")

        user_input = input("\nWhat assessment would you like to remove(SELECT BY RESULT ID OR [Q]uit): ").lower()

        if user_input == 'q':
            return
        if user_input.isalpha():
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        elif int(user_input) > len(assess_results):
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        elif user_input == '':
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        
        
        
        value_to_update = input('\nAre you sure you would like to remove this Assessment? THIS CANNOT BE UNDONE (Y or N): ')
        


        if value_to_update == 'y':
            delete_assess.remove_assess(user_input)
            print(f'\nThe assessment with id {user_input} was removed from the database')
            input('\nPress enter to return to main menu')
            os.system('clear')
            return
        else:
            continue