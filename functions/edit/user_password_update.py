import sys
sys.path.append('.')
from db_querys import user_update_password
from functions import enter_to_menu, hash_password

def update_password(value):

    user_input = input("\nAre you sure you would like to update your password?(Y or N): ").lower()
    
    if user_input == "y":
        new_password = input("Please input your new password: ")

        safe_password = hash_password.hash_pass(new_password)

        user_update_password.edit_user_password(safe_password, value[0])
        print(f"your password was updated to {new_password}")
        enter_to_menu.enter_to_menu()
    else:
        return