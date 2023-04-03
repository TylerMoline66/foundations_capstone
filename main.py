import os
import functions


print('\n\nHello! Welcome to Devpipline\'s online services, enter your credentials below to get started!')

while True:
  try_login = functions.login.login()
  if try_login != False:
     break
  else:
     continue
  
os.system('clear')

if try_login[8] == 0:
   print(f"Welcome {try_login[1]} {try_login[2]}, what would you like to do?")

   options = ['View or search records', 'Add to company records', 'Edit existing company records','Delete company records', 'Log out']

   while True:
      os.system('clear')
      print("\nMANAGER OPTIONS\n---------------------------\n")
      for i, val in enumerate(options, start=1):
        print(f"{i}. {val}")
      print('\n---------------------------\n')
      
      user_input = input('What would you like to do? ')
      print()

      if user_input == '1':

        os.system('clear')
        print(print("\nMANAGERS VIEW OR SEARCH OPTIONS\n--------------------------------\n"))
        view_list = ['View all users in a list', "Search for user by first or last name", "View a report of all users and their competency levels for a given competency", "View a competency level report for an individual user", "View a list of assessments for a given user", "Quit"]
        for i, val in enumerate(view_list, start=1):
            print(f"{i}: {val}")
        view_input = input("\nwhat would you like to do?(SELECT BY NUMBER): ")
        if view_input == '1':
            functions.deactivate_course()
        elif view_input == '2':
            functions.deactivate_person()
        elif view_input == '3':
            functions.deactivate_cohort() 
        elif view_input == '4':
            functions.deactivate_cohort() 
        elif view_input == '5':
            functions.deactivate_cohort() 
        else:
           continue

      elif user_input == '2':

        os.system('clear')
        print(print("\nMANAGERS ADD OPTIONS\n--------------------------------\n"))
        add_list = ['Add a user', "Add a new competency", "Add a new assessment to a competency", "Add an assessment result for a user for an assessment (this is like recording test results for a user)", "Quit"]
        for i, val in enumerate(add_list, start=1):
            print(f"{i}: {val}")
        add_input = input("\nwhat would you like to do?(SELECT BY NUMBER): ")
        if add_input == '1':
            functions.deactivate_course()
        elif add_input == '2':
            functions.deactivate_person()
        elif add_input == '3':
            functions.deactivate_cohort() 
        elif add_input == '4':
            functions.deactivate_cohort() 
        else:
           continue

      elif user_input == '3':
        os.system('clear')
        print(print("\nMANAGERS EDIT OPTIONS\n--------------------------------\n"))
        edit_list = ['Edit a user\'s information', "edit a competency", "edit an assessment", "edit an assessment result", "Quit"]
        for i, val in enumerate(edit_list, start=1):
            print(f"{i}: {val}")
        edit_input = input("\nwhat would you like to do?(SELECT BY NUMBER): ")
        if edit_input == '1':
            functions.deactivate_course()
        elif edit_input == '2':
            functions.deactivate_person()
        elif edit_input == '3':
            functions.deactivate_cohort() 
        elif edit_input == '4':
            functions.deactivate_cohort() 
        else:
           continue

      elif user_input == '4':
        os.system('clear')
        print(print("\nMANAGERS DELETE OPTIONS\n--------------------------------\n"))
        delete_list = ['Delete an assessment result', "Quit"]
        for i, val in enumerate(delete_list, start=1):
            print(f"{i}: {val}")
        delete_input = input("\nwhat would you like to do?(SELECT BY NUMBER): ")
        if delete_input == '1':
            functions.deactivate_course()
        else:
           continue

      
      else:
        print("\n\nThanks for using our program!\n\n")
        break

else:

   options = ['Change email', 'Change password', 'View Competencies?', 'Log out']

   while True:
      # os.system('clear')
      print(f"Welcome back {try_login[1]} {try_login[2]}, what would you like to do?")
      print("\nUSER OPTIONS\n---------------------------\n")
      for i, val in enumerate(options, start=1):
        print(f"{i}. {val}")
      print('\n---------------------------\n')
      
      user_input = input('What would you like to do? ')
      if user_input.isnumeric() == False:
        print("Please input a number")
        continue
      print()

      if int(user_input) > len(options) or user_input.isdigit() == False:
         print('Please input a valid option\n')
      elif user_input == '1':
         new_email = functions.user_edit_email.update_email(try_login)
      elif user_input == '2':
         new_password = functions.user_password_update.update_password(try_login)
      elif user_input == '3':
         pass
      else:
         log_out = input('Would you like to log out? (Y or N): ').lower()
         if log_out == 'y':
            print('\nSuccessfully logged out, see you next time!\n')
            break
         else:
            continue