import bcrypt
import sys
sys.path.append('.')
from db_querys import login_query
import os

def login():
    os.system('clear')
    while True:
        
        login = input("\nWould you like to login, or quit?(L or Q): ").lower()

        if login != 'l' and login != 'q':
            print('Im sorry I dont understand, do you want to [L]ogin or [Q]uit? ')

        elif login == 'l':
            print('''\n
   +--------------+
   |.------------.|
   ||            ||
   ||            ||
   ||            ||
   ||            ||
   |+------------+|
   +-..--------..-+
   .--------------.
  / /============\ \\
 / /==============\ \\
/____________________\\
\____________________/                                                                               
''')
            print("\n\nWelcome to Devpipeline's online services! Enter your credentials below to get started!")
            print("\n\n---------------------------\n")
            email = input('Please enter your email: ')
            print('\n---------------------------\n')
            password = input('Please enter your password: ')
            print('\n---------------------------\n')

            pass_in = [email]

            login_results = login_query.find_one(pass_in)

            if login_results == []:
                print("Incorrect email")
                go_back = input('\nWould you like to try another email? (Y or N): ').lower()
                if go_back == 'y':
                    os.system('clear')
                    continue
                else: 
                    return False

            password = password.encode('utf-8')
            

            if bcrypt.checkpw(password, login_results[0][5]):
                
                return [login_results[0][0], login_results[0][1], login_results[0][2], login_results[0][3], login_results[0][4], login_results[0][5], login_results[0][6], login_results[0][7], login_results[0][8], login_results[0][9]]
            else: 
                incorrect = input("Im sorry that password is incorrect, would you like to try again? (Y or N): ").lower()
                if incorrect == 'y':
                    os.system('clear')
                    continue
                elif incorrect == "n":
                    return False
                else:
                    pass

            # if password == login_results[0][5]:
            #     return [login_results[0][0], login_results[0][1], login_results[0][2], login_results[0][3], login_results[0][4], login_results[0][5], login_results[0][6], login_results[0][7], login_results[0][8], login_results[0][9]]
            # else:
            #     print("Im sorry, that password is incorrect, please try again")
            #     return False
            
        elif login == 'q':
            return False


      




