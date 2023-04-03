# ----------View all people function----------
def view_people():
    rows = database.find_all()
    
    print()
    print(f"{'ID':<9}{'First name':<20}{'Last name':<20}")
    print(f"{'--':<9}{'----------':<20}{'---------':<20}")

    for val in rows:
        print(f"{val[0]:<9}{val[1]:<20}{val[2]:<20}")
        print(f"{'--':<9}{'----------':<20}{'---------':<20}")