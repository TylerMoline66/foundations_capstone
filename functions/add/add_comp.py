def add_a_course():
    while True:
        add_course_name = input('What is the name of this course: ')
        add_course_description = input('What is the course description: ')

        new_course = [add_course_name, add_course_description]

        add_new_course = input(f'{new_course}\nAre you sure you would like to add this course?(Y or N or [Q]uit): ').lower()
                
        if add_new_course == 'y':
            database.add_course(new_course)
            return 'Action Complete'
        elif add_new_course == 'q':
            break
        else:
            print('Ok try again')