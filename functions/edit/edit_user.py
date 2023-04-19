import sys
sys.path.append('.')
from db_querys import search_by_first_name, search_by_last_name, edit_user_query
from functions import hash_password
import os

def edit_user_info():
    
    while True:
        quitting = input("\nAre you sure you would like to update a users information? (Y or N): ").lower()
        if quitting == "n":
             os.system('clear')
             return
        if quitting != 'y':
             print('Incorrect input')
             input('Press enter to try again')
             continue
             
        f_or_l = input("\nWould you like to search by first or last name? (F or L or [Q]uit): ").lower()
        
        if f_or_l == "":
            print("Incorrect input")
            input("Press enter to try again")
            continue

        if len(f_or_l) > 1:
               print("Incorrect input")
               input("Press enter to try again")
               continue

        if f_or_l == 'q':
            os.system('clear')
            break

        if f_or_l == 'f':
            user_input = input('\nWhat is the users first name? ')

            results = search_by_first_name.search_by_first_name(user_input)
            if results == []:
                    print("There is no one in the database with that name")
                    input('Press enter to try again')
                    continue
            else:
                    print(f"\n{'User ID':<20}{'First Name':<20}{'Last Name':<20}{'Phone Number':<20}{'Email':<20}{'Date Created':<20}{'Hire Date':<20}{'User Type(0 = manager)':<25}{'Active(1 is active)':<20}")
                    print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'------------':<20}{'-----':<20}{'------------':<20}{'---------':<20}{'----------------------':<25}{'------------------':<20}")
                    print(f"{results[0][0]:<20}{results[0][1]:<20}{results[0][2]:<20}{results[0][3]:<20}{results[0][4]:<20}{results[0][6]:<20}{results[0][7]:<20}{results[0][8]:<25}{results[0][9]}")

                    

        if f_or_l == 'l':
            user_input = input('\nWhat is the users last name? ')

            results = search_by_last_name.search_by_last_name(user_input)

            if results == []:
                    print("There is no one in the database with that name")
                    input('Press enter to try again')
                    continue
            else:
                    print(f"\n{'User ID':<20}{'First Name':<20}{'Last Name':<20}{'Phone Number':<20}{'Email':<20}{'Date Created':<20}{'Hire Date':<20}{'User Type(0 = manager)':<25}{'Active(1 is active)':<20}")
                    print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'------------':<20}{'-----':<20}{'------------':<20}{'---------':<20}{'----------------------':<25}{'------------------':<20}")
                    print(f"{results[0][0]:<20}{results[0][1]:<20}{results[0][2]:<20}{results[0][3]:<20}{results[0][4]:<20}{results[0][6]:<20}{results[0][7]:<20}{results[0][8]:<25}{results[0][9]}")
                    

        user = results
        user = [user[0][0], user[0][1], user[0][2], user[0][3], user[0][4], user[0][5], user[0][6], user[0][7], user[0][8], user[0][9]]


        print("\nUser info\n---------------------------\n")
        for i, val in enumerate(user, start=1):
            print(f"{i}. {val}")
        print('\n---------------------------\n')

        info_update = input('Which item would you like to update? (SELECT BY NUMBER): ')


        if info_update.isalpha():
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        elif int(info_update) > len(user):
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        elif info_update == '':
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        elif info_update == '6':
            new_info = input('\nWhat would you like the new password to be? ')
            safe_pass = hash_password.hash_pass(new_info)
            user[int(info_update) - 1] = safe_pass
            edit_user_query.edit_user(user)
            print(f"\n{user[1]} {user[2]} was update in the database")
            input('\nPress enter to return to the main menu')
            os.system('clear')
            return 
        elif info_update == '10':
            new_info = input('\nIf the user is active, choose 1, if they are not active choose 0: ')
            user[int(info_update) - 1] = new_info
            edit_user_query.edit_user(user)
            print(f"\n{user[1]} {user[2]} was update in the database")
            input('\nPress enter to return to the main menu')
            os.system('clear')
            return 
        else:
            new_info = input('\nWhat would you like to update the data to be? ')
            user[int(info_update) - 1] = new_info
            edit_user_query.edit_user(user)
            print(f"\n{user[1]} {user[2]} was update in the database")
            input('\nPress enter to return to the main menu')
            os.system('clear')
            return
    
    



    