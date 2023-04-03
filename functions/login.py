# import bcrypt
import sys
sys.path.append('.')
from db_querys import login_query

def login():
    
    print("\n\n---------------------------\n")
    email = input('Please enter your email: ')
    password = input('Please enter your password: ')
    print('\n---------------------------\n')

    pass_in = [email]

    login_results = login_query.find_one(pass_in)



    # -----------------THIS IS ALL BCRYPT STUFF--------------
    # password = password.encode('utf-8')
    # my_hashed = login_results[0][5].encode('utf-8')
    
    # salt = bcrypt.gensalt()
    # hashed = bcrypt.hashpw(password, salt)
    # hashed1 = bcrypt.hashpw(my_hashed, salt)

    # print(hashed1)
    # print(hashed)

    # if bcrypt.checkpw(hashed, hashed1):
    #     return print([login_results[0][0], login_results[0][1], login_results[0][2], login_results[0][3], login_results[0][4], login_results[0][5], login_results[0][6], login_results[0][7], login_results[0][8], login_results[0][9]])
    # else: 
    #     return print(False)


    if password == login_results[0][5]:
        return [login_results[0][0], login_results[0][1], login_results[0][2], login_results[0][3], login_results[0][4], login_results[0][5], login_results[0][6], login_results[0][7], login_results[0][8], login_results[0][9]]
    else:
        print("Im sorry, that password is incorrect, please try again")
        return False


      




