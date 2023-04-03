import sys
sys.path.append('.')
from db_querys import user_edit_email

def update_email(value):

    print(f"{value[1]}, This is your current email {value[4]}")

    user_input = input("\nAre you sure you would like to update your email?(Y or N): ").lower()
    
    if user_input == "y":
        new_email = input("Please input your new email: ")
        user_edit_email.edit_user_email(new_email, value[0])
        print(f"{value[4]} was updated to {new_email}")
    else:
        return
    
    