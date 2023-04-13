import sys
sys.path.append('.')
from db_querys import view_assess_of_user
import os


def view_user_and_assess():
      while True:
        os.system('clear')


        select_user = input('\nHow would you like to search for a user? first name, last name or ID (F, L, I or [Q]uit): ').lower()

        if select_user == 'q':
           return

        elif select_user != 'f' and select_user != 'l' and select_user != 'i':
           print('Incorrect input')
           input('press enter to try again')
           continue
        elif select_user == 'f':
           first = input('\nPlease enter the users first name: ')
           result = view_assess_of_user.by_first(first)

        elif select_user == 'l':
           last = input('\nPlease enter the users last name: ')
           result = view_assess_of_user.by_last(last)

        elif select_user == 'i':
           user_id = input('\nPlease enter the users ID: ')
           result = view_assess_of_user.by_id(user_id)


        if result == []:
           print('Im sorry, there are no results that match your search')
           input('Press enter to try again')
           continue
        else:
           assess_results = 0
           print(f"{'User ID':<20}{'First Name':<20}{'Last Name':<20}{'Score':<20}{'Assessment ID':<20}{'Assessment Type':<20}")
           print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'-----':<20}{'-------------':<20}{'---------------':<20}")

           for i in result:
            assess_results += int(i[5])
            print(f"{i[0]:<20}{i[1]:<20}{i[2]:<20}{i[5]:<20}{i[3]:<20}{i[4]:<20}")
            print(f"{'-------':<20}{'----------':<20}{'---------':<20}{'-----':<20}{'-------------':<20}{'---------------':<20}")

           average = (assess_results / len(result))
           print(f"\n---------------------> YOUR AVERAGE RESULT SCORE IS {average} <---------------------")
         

           input('\nPress enter to search for another user or quit')