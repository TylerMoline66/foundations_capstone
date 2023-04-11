import sys
sys.path.append('.')
from db_querys import view_all_assess_results , edit_assess_result_query
import os


def edit_assess_result():
      while True:
        os.system('clear')

        all_assessments = view_all_assess_results.view_assess_results()
        
        

        print(f"{'Result ID':<10}{'User ID':<10}{'Assess ID':<10}{'Score':<10}{'Date Taken':<20}{'Manager ID':<20}")
        print(f"{'---------':<10}{'-------':<10}{'---------':<10}{'-----':<10}{'----------':<20}{'----------':<20}")
        for i in all_assessments:
            print(f"{i[0]:<10}{i[1]:<10}{i[2]:<10}{i[3]:<10}{i[4]:<20}{i[5]:<20}")
            print(f"{'---------':<10}{'-------':<10}{'---------':<10}{'-----':<10}{'----------':<20}{'----------':<20}")
            

        user_input = input('\nWhich Result would you like to update? (SELECT BY RESULT ID or [Q]uit): ').lower()

        

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
            chosen_assess = [chosen_assess[0], chosen_assess[1], chosen_assess[2], chosen_assess[3], chosen_assess[4], chosen_assess[5]]
            
            
            new_assess = input("\nWould you like to change \n1. User ID\n2. Assessment ID\n3. Score\n4. Date Taken\n5. Manager ID\n--> ")
            
            if new_assess.isalpha():
                print("\nInvalid input")
                input("Press enter to try again")
                continue
            elif new_assess == '':
                print("\nInvalid input")
                input("Press enter to try again")
                continue
            elif int(new_assess) > 5:
                print("\nInvalid input")
                input("Press enter to try again")
                continue

            new_assess_name = input("\nWhat would you like to change the input to? ")

            chosen_assess[int(new_assess)] = new_assess_name

            edit_assess_result_query.edit_assess(chosen_assess)
            print('Your changes were added to the database')
            input('Press enter to continue')
            os.system('clear')
            return