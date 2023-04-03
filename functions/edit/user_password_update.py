import sys
sys.path.append('.')
from db_querys import user_update_password
from functions import enter_to_menu

def update_password(value):

    print(f"{value[1]}, This is your current password {value[5]}")

    user_input = input("\nAre you sure you would like to update your password?(Y or N): ").lower()
    
    if user_input == "y":
        new_password = input("Please input your password: ")
        user_update_password.edit_user_password(new_password, value[0])
        print(f"{value[5]} was updated to {new_password}")
        enter_to_menu.enter_to_menu()
    else:
        return