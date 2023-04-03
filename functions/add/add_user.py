import db_querys

def add_a_user():
    while True:
        add_first_name = input('What is the users first name: ')
        add_last_name = input('What is the users last name: ')
        add_phone = input('What is the new users phone number: ')
        add_email = input('What is the new users email: ')
        add_password = input('What is the new users password: ')
        hire_date = input('What was this users hire date? () ')
        user_type = input('is this user a manager or normal user?')

        new_user = [add_first_name, add_last_name, add_phone, add_email, add_password, hire_date, user_type]

        add_new_user = input(f'{new_user}\nAre you sure you would like to add this User?(Y or N or [Q]uit): ').lower()
                
        if add_new_user == 'y':
            db_querys.add.add_user_query.add_user(new_user)
            return 'Action Complete'
        elif add_new_user == 'q':
            break
        else:
            print('Ok try again')