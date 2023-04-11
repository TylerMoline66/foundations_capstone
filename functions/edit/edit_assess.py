import sys
sys.path.append('.')
from db_querys import view_all_assessments, edit_assess_query
import os


def edit_assessment():
      while True:
        os.system('clear')

        all_assessments = view_all_assessments.view_assessments()
        

        print(f"{'Assessment ID':<20}{'Competency ID':<20}{'Assessment Name':<50}{'Date Created':<20}")
        print(f"{'-------------':<20}{'-------------':<20}{'---------------':<50}{'------------':<20}")
        for i in all_assessments:
            print(f"{i[0]:<20}{i[1]:<20}{i[2]:<50}{i[3]:<20}")
            print(f"{'-------------':<20}{'-------------':<20}{'---------------':<50}{'------------':<20}")
            

        user_input = input('\nWhich Assessment would you like to update? (SELECT BY ASSESSMENT ID or [Q]uit): ').lower()

        

        if user_input == 'q':
            return
        elif user_input == '':
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        elif user_input.isalpha():
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        elif int(user_input) > len(all_assessments):
            print("\nInvalid input")
            input("Press enter to try again")
            continue
        else:
            chosen_assess = all_assessments[int(user_input) - 1]
            chosen_assess = [chosen_assess[0], chosen_assess[1], chosen_assess[2], chosen_assess[3]]
            
            
            new_assess = input("\nWould you like to change \n1. Competency ID\n2. Assessment name\n3. Date created\n--> ")
            
            if new_assess.isalpha():
                print("\nInvalid input")
                input("Press enter to try again")
                continue
            elif new_assess == '':
                print("\nInvalid input")
                input("Press enter to try again")
                continue
            elif int(new_assess) > 3:
                print("\nInvalid input")
                input("Press enter to try again")
                continue

            new_assess_name = input("\nWhat would you like to change the input to? ")

            chosen_assess[int(new_assess)] = new_assess_name
          

            edit_assess_query.edit_assess(chosen_assess)
            print('Your changes were added to the database')
            input('Press enter to continue')
            os.system('clear')
            return