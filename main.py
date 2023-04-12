import os
import functions


# ---------------This is to allow the user to try and login---------------
while True:
  break_out = False
  try_login = functions.login.login()

  while True:
    
    if try_login == False :
      break 
    elif break_out == True:
      break

    # ---------------This is if the user that signed in is a manager, they have the lists and options shown below---------------
    elif try_login[8] == 0:
      os.system('clear')
      print(f"Welcome back {try_login[1]} {try_login[2]}, what would you like to do?")

      options = ['View or search records', 'Add to company records', 'Edit existing company records','Delete company records', "Update email", "Update password", 'Log out']

      while True:
          if break_out == True:
            break
          
          print("\nMANAGER OPTIONS\n---------------------------\n")
          for i, val in enumerate(options, start=1):
            print(f"{i}. {val}")
          print('\n---------------------------\n')
          
          user_input = input('What would you like to do? ')
          print()

          if user_input.isnumeric() == False:
            print(f"\n{user_input} is not a valid input, please try again\n")
            continue
          print()


          if int(user_input) > len(options) or user_input.isdigit() == False:
            print('Please input a valid option\n')

          elif user_input == '1':

            os.system('clear')
            print("\nMANAGERS VIEW OR SEARCH OPTIONS\n--------------------------------\n")
            view_list = ['View all users in a list', "Search for user by first or last name", "View a report of all users and their competency levels for a given competency (EXPORTABLE)", "View a competency level report for an individual user (EXPORTABLE)", "View a list of assessments for a given user", "Quit"]
            for i, val in enumerate(view_list, start=1):
                print(f"{i}: {val}")
            view_input = input("\nwhat would you like to do?(SELECT BY NUMBER): ")
            if view_input == '1':
                os.system('clear')
                functions.view_users_in_list.view_all()
            elif view_input == '2':
                os.system('clear')
                functions.search_for_users_first_or_last.search_by_name()
            elif view_input == '3':
                os.system('clear')
                functions.view_report_all_users_and_comp_given.search_user_and_comp()
            elif view_input == '4': 
                os.system('clear')
                functions.view_comp_of_one_user.search_user_and_comp() 
            elif view_input == '5':
                os.system('clear')
                functions.view_assess_of_user.view_user_and_assess()
            else:
              os.system('clear')
              continue

          elif user_input == '2':

            os.system('clear')
            print("\nMANAGERS ADD OPTIONS\n--------------------------------\n")
            add_list = ['Add a user', "Add a new competency", "Add a new assessment to a competency", "Add an assessment result for a user for an assessment (this is like recording test results for a user)", "Quit"]
            for i, val in enumerate(add_list, start=1):
                print(f"{i}: {val}")
            add_input = input("\nwhat would you like to do?(SELECT BY NUMBER): ")
            if add_input == '1':
                functions.add_user.add_a_user()
            elif add_input == '2':
                functions.add_comp.add_a_competency()
            elif add_input == '3':
                functions.add_assess_to_comp.add_asess_to_comp()
            elif add_input == '4':
                functions.add_assess_result_for_user_for_assess.add_asess_to_comp()
            else:
              os.system('clear')
              continue

          elif user_input == '3':
            os.system('clear')
            print("\nMANAGERS EDIT OPTIONS\n--------------------------------\n")
            edit_list = ['Edit a user\'s information', "Edit a competency", "Edit an assessment", "Edit an assessment result", "Quit"]
            for i, val in enumerate(edit_list, start=1):
                print(f"{i}: {val}")
            edit_input = input("\nwhat would you like to do?(SELECT BY NUMBER): ")
            if edit_input == '1':
                functions.edit_user.edit_user_info()
            elif edit_input == '2':
                functions.edit_competency.edit_comp()
            elif edit_input == '3':
                functions.edit_assess.edit_assessment()
            elif edit_input == '4':
                functions.edit_assess_results.edit_assess_result()
            else:
              os.system('clear')
              continue

          elif user_input == '4':
            os.system('clear')
            print("\nMANAGERS DELETE OPTIONS\n--------------------------------\n")
            delete_list = ['Delete an assessment result', "Quit"]
            for i, val in enumerate(delete_list, start=1):
                print(f"{i}: {val}")
            delete_input = input("\nwhat would you like to do?(SELECT BY NUMBER): ")
            if delete_input == '1':
                functions.delete_assess.delete_result()
            else:
              os.system('clear')
              continue

          elif user_input == '5':
            new_email = functions.user_edit_email.update_email(try_login)
          elif user_input == '6':
            new_password = functions.user_password_update.update_password(try_login)
          elif user_input == '7':
            log_out = input('Would you like to log out? (Y or N): ').lower()
            if log_out == 'y': 
              break_out = True
              continue

      # ---------------this is if the user is not a manager and just an employee this is their option menu---------------
    else:
      options = ['Change email', 'Change password', 'View Competencies', 'Log out']
      os.system('clear')

      while True:
          if break_out == True:
            break
          
          print(f"Welcome back {try_login[1]} {try_login[2]}, what would you like to do?")
          print("\nUSER OPTIONS\n---------------------------\n")
          for i, val in enumerate(options, start=1):
            print(f"{i}. {val}")
          print('\n---------------------------\n')
          
          user_input = input('What would you like to do? ')

          if user_input.isnumeric() == False:
            print(f"\n{user_input} is not a valid input, please try again\n")
            continue
          print()


          if int(user_input) > len(options) or user_input.isdigit() == False:
            print('Please input a valid option\n')
          elif user_input == '1':
            os.system('clear')
            new_email = functions.user_edit_email.update_email(try_login)
          elif user_input == '2':
            os.system('clear')
            new_password = functions.user_password_update.update_password(try_login)
          elif user_input == '3':
            os.system('clear')
            view = functions.user_view_comp_results.view_comp_results(try_login)
          else:
            log_out = input('Would you like to log out? (Y or N): ').lower()
            if log_out == 'y':
              break_out = True
              continue

  if try_login == False:
     os.system('clear')
     print("\n---------- Have a great day! ----------\n")
     break
  else:
     continue