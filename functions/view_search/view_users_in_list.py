import sys
sys.path.append('.')
from db_querys import view_all_users
from functions import enter_to_menu

# ----------View all people function----------
def view_all():
    rows = view_all_users.view_all()
    print(rows)
    print()
    print(f"{'ID':<9}{'First name':<20}{'Last name':<20}{'Phone':<20}{'Email':<35}{'Date created':<20}{'Hire date':<20}{'User type(0 is manager)':<20}{'Active(1 is active)'}")
    print(f"{'--':<9}{'----------':<20}{'---------':<20}{'-----':<20}{'-----':<35}{'------------':<20}{'---------':<20}{'-----------------------':<20}{'-------------------'}")

    for val in rows:
        print(f"{val[0]:<9}{val[1]:<20}{val[2]:<20}{val[3]:<20}{val[4]:<35}{val[6]:<20}{val[7]:<20}{val[8]}")
        print(f"{'--':<9}{'----------':<20}{'---------':<20}{'-----':<20}{'-----':<35}{'------------':<20}{'---------':<20}{'-----------------------':<20}{'-------------------'}")


    enter_to_menu.enter_to_menu()