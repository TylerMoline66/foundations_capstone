

def update_student_reg(value):

    view_people()

    user_input = input("\nWhat student would you like to remove from their cohort(SELECT BY ID): ")
    id_data = database.search_student_reg(user_input)
    
    values = [id_data[0][0],id_data[0][1],id_data[0][2]]
    
    for i, value in enumerate(values):
        if i == 0:
            print(f'Student ID: {value}')
        if i == 1:
            print(f"Cohort ID: {value}")
        elif i == 2:
            print(f"Registration date: {value}")
    
    value_to_update = input('\nAre you sure you would like to remove this student from this cohort?(Y or N): ')
    print()

    date = get_date()
    active = 0

    if value_to_update == 'y':
        values.append(date)
        values.append(active)
        database.update(values)
        return