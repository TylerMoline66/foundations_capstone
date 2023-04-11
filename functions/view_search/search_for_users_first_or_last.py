import sys
sys.path.append('.')
from db_querys import search_by_first_name, search_by_last_name
import os

# ----------Search for user by name----------
def search_by_name():
     while True:
          f_or_l = input("Would you like to search by first or last name? (F or L or [Q]uit): ").lower()
          
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
               return

          if f_or_l == 'f':
               user_input = input('\nWhat is the users first name? ')

               results = search_by_first_name.search_by_first_name(user_input)
               if results == []:
                    print("There is no one in the database with that name")
                    input('Press enter to try again')
                    continue
               else:
                    print(f"{'User ID':<20}{'First Name':<20}{'Last Name':<20}{'Phone Number':<20}{'Email':<20}{'Date Created':<20}{'Hire Date':<20}{'User Type(0 = manager)'}")
                    print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'------------':<20}{'-----':<20}{'------------':<20}{'---------':<20}{'----------------------'}")
                    print(f"{results[0][0]:<20}{results[0][1]:<20}{results[0][2]:<20}{results[0][3]:<20}{results[0][4]:<20}{results[0][6]:<20}{results[0][7]:<20}{results[0][8]}")

                    if input('\n-----> Press enter to continue') == "":
                         os.system('clear')
                         return results
          if f_or_l == 'l':
               user_input = input('\nWhat is the users last name? ')

               results = search_by_last_name.search_by_last_name(user_input)

               if results == []:
                    print("There is no one in the database with that name")
                    input('Press enter to try again')
                    continue
               else:
                    print(f"{'User ID':<20}{'First Name':<20}{'Last Name':<20}{'Phone Number':<20}{'Email':<20}{'Date Created':<20}{'Hire Date':<20}{'User Type(0 = manager)'}")
                    print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'------------':<20}{'-----':<20}{'------------':<20}{'---------':<20}{'----------------------'}")
                    print(f"{results[0][0]:<20}{results[0][1]:<20}{results[0][2]:<20}{results[0][3]:<20}{results[0][4]:<20}{results[0][6]:<20}{results[0][7]:<20}{results[0][8]}")


                    if input('\n-----> Press enter to continue') == "":
                         os.system('clear')
                         return results
