import bcrypt
from functions import hash_password, enter_to_menu, get_current_time
from db_querys import add_user_query
import os

def add_a_user():
    while True:
        adding_user = input("\nAre you sure you would like to add a user? (Y or N)").lower()

        if adding_user == 'n':
            os.system('clear')
            return

        add_first_name = input('\nWhat is the users first name: ')
        add_last_name = input('\nWhat is the users last name: ')
        add_phone = input('\nWhat is the new users phone number: ')
        add_email = input('\nWhat is the new users email: ')
        add_password = input('\nWhat is the new users password: ')
        hire_date = input('\nWhat was this users hire date? (YYYY-MM-DD): ')
        user_type = input('\nIs this user a manager or normal user? (0 for manager 1 for normal user): ')


        if add_first_name == "" or add_last_name == "" or add_phone == "" or add_email == "" or add_password == "" or hire_date == "" or user_type == "":
            print("\nYou MUST enter information in each field")
            input("Press enter to try again")
            continue
        elif user_type != '0' and user_type != '1':
            print("\nUser type can ONLY be [1]--> NORMAL USER or [0]--> MANAGER")
            input("Press enter to try again")
            continue

        safe_password = hash_password.hash_pass(add_password)

        current_time = get_current_time.get_date()

        new_user = [add_first_name, add_last_name, add_phone, add_email, safe_password, current_time, hire_date, user_type]

        add_new_user = input(f'\n{new_user}\n\nAre you sure you would like to add this User?(Y or N or [Q]uit): ').lower()

           
        if add_new_user == 'y':
            add_user_query.add_user(new_user)
            print(f"\n{new_user[0]} {new_user[1]} was added to the database")
            enter_to_menu.enter_to_menu()
            return 
        elif add_new_user == 'q':
            break
        else:
            print('Ok try again')