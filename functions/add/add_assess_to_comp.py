def add_a_cohort():
    while True:
        view_people()
        course_instructor = input('Choose the instructor for this cohort(SELECT BY ID): ')
        view_courses()
        course = input('What course are they teaching?(SELECT BY ID): ')

        start_date = get_date()
        new_cohort = [course_instructor, course, start_date]

        add_new_cohort = input(f'{new_cohort}\nAre you sure you would like to add this cohort?(Y or N or [Q]uit): ').lower()
                
        if add_new_cohort == 'y':
            database.add_cohort(new_cohort)
            return 'Action Complete'
        elif add_new_cohort == 'q':
            break
        else:
            print('Ok try again')