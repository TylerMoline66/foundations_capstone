import sys
sys.path.append('.')
from db_querys import user_view_comp_results_query, comp_name
import os
from functions import enter_to_menu


def view_comp_results(user):
    rows = user_view_comp_results_query.user_comp_results(user[0])
    comp_name = comp_lvl_for_user(rows[0][0])
    
    print('\nCompetencies are based on a scale from 0-4\n\n0 - No competency - Needs Training and Direction\n1 - Basic Competency - Needs Ongoing Support\n2 - Intermediate Competency - Needs Occasional Support\n3 - Advanced Competency - Completes Task Independently\n4 - Expert Competency - Can Effectively pass on this knowledge and can initiate optimizations\n')
    print(f"{'Assessment ID':<20}{'Assesment Name':<20}{'Assessment Results':<20}")
    print(f"{'-------------':<20}{'--------------':<20}{'------------------':<20}")

    for val in rows:
        print(f"{val[0]:<20}{comp_name[0][0]:<20}{val[1]:<20}")
        print(f"{'-------------':<20}{'--------------':<20}{'------------------':<20}")

    enter_to_menu.enter_to_menu()

    
def comp_lvl_for_user(value):
    rows = comp_name.user_comp_results(value)
    
    return rows