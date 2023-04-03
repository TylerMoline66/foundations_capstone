# ----------Search for customer by name----------
def search_by_name():
    user_input = input('Search by name: ')
    result = database.find_one(user_input)

    print()
    for i in result:
         the_result = (f"ID: {i[0]}\n----------\nName: {i[1]}\n----------\nStreet Address: {i[2]}\n---------\nCity: {i[3]}\n----------\nState: {i[4]}\n----------\nPostal Code: {i[5]}\n----------\nPhone: {i[6]}\n----------\nEmail: {i[7]}")

    return the_result