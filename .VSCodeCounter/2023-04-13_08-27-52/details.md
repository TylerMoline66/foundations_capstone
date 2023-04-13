# Details

Date : 2023-04-13 08:27:52

Directory /Users/tylermoline/devpipeline/homework/capstone

Total : 56 files,  1652 codes, 22 comments, 440 blanks, all 2114 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [Pipfile](/Pipfile) | toml | 8 | 0 | 4 | 12 |
| [competency_info.db](/competency_info.db) | SQL | 117 | 0 | 2 | 119 |
| [db_querys/__init__.py](/db_querys/__init__.py) | Python | 4 | 0 | 0 | 4 |
| [db_querys/add/add_assess_results_query.py](/db_querys/add/add_assess_results_query.py) | Python | 7 | 0 | 3 | 10 |
| [db_querys/add/add_assess_to_comp_query.py](/db_querys/add/add_assess_to_comp_query.py) | Python | 8 | 0 | 3 | 11 |
| [db_querys/add/add_competency_query.py](/db_querys/add/add_competency_query.py) | Python | 8 | 0 | 3 | 11 |
| [db_querys/add/add_user_query.py](/db_querys/add/add_user_query.py) | Python | 8 | 0 | 5 | 13 |
| [db_querys/create_db.sql](/db_querys/create_db.sql) | SQL | 236 | 0 | 14 | 250 |
| [db_querys/delete_assess.py](/db_querys/delete_assess.py) | Python | 7 | 0 | 3 | 10 |
| [db_querys/edit/edit_assess_query.py](/db_querys/edit/edit_assess_query.py) | Python | 12 | 0 | 4 | 16 |
| [db_querys/edit/edit_assess_result_query.py](/db_querys/edit/edit_assess_result_query.py) | Python | 12 | 0 | 4 | 16 |
| [db_querys/edit/edit_comp_query.py](/db_querys/edit/edit_comp_query.py) | Python | 12 | 0 | 4 | 16 |
| [db_querys/edit/edit_user_query.py](/db_querys/edit/edit_user_query.py) | Python | 12 | 0 | 4 | 16 |
| [db_querys/edit/user_edit_email.py](/db_querys/edit/user_edit_email.py) | Python | 8 | 0 | 3 | 11 |
| [db_querys/edit/user_update_password.py](/db_querys/edit/user_update_password.py) | Python | 8 | 0 | 3 | 11 |
| [db_querys/login_query.py](/db_querys/login_query.py) | Python | 8 | 0 | 3 | 11 |
| [db_querys/view_search/comp_name.py](/db_querys/view_search/comp_name.py) | Python | 11 | 1 | 2 | 14 |
| [db_querys/view_search/search_by_first_name.py](/db_querys/view_search/search_by_first_name.py) | Python | 7 | 1 | 1 | 9 |
| [db_querys/view_search/search_by_last_name.py](/db_querys/view_search/search_by_last_name.py) | Python | 7 | 1 | 1 | 9 |
| [db_querys/view_search/user_view_comp_results_query.py](/db_querys/view_search/user_view_comp_results_query.py) | Python | 7 | 1 | 1 | 9 |
| [db_querys/view_search/view_all_assess_results.py](/db_querys/view_search/view_all_assess_results.py) | Python | 9 | 1 | 2 | 12 |
| [db_querys/view_search/view_all_assessments.py](/db_querys/view_search/view_all_assessments.py) | Python | 9 | 1 | 4 | 14 |
| [db_querys/view_search/view_all_users.py](/db_querys/view_search/view_all_users.py) | Python | 7 | 1 | 1 | 9 |
| [db_querys/view_search/view_assess_of_user.py](/db_querys/view_search/view_assess_of_user.py) | Python | 39 | 1 | 9 | 49 |
| [db_querys/view_search/view_comp_of_one_user.py](/db_querys/view_search/view_comp_of_one_user.py) | Python | 36 | 1 | 3 | 40 |
| [db_querys/view_search/view_managers.py](/db_querys/view_search/view_managers.py) | Python | 9 | 1 | 1 | 11 |
| [db_querys/view_search/view_user_and_comp_given.py](/db_querys/view_search/view_user_and_comp_given.py) | Python | 12 | 1 | 1 | 14 |
| [functions/__init__.py](/functions/__init__.py) | Python | 4 | 0 | 0 | 4 |
| [functions/add/add_assess_result_for_user_for_assess.py](/functions/add/add_assess_result_for_user_for_assess.py) | Python | 90 | 0 | 25 | 115 |
| [functions/add/add_assess_to_comp.py](/functions/add/add_assess_to_comp.py) | Python | 38 | 0 | 9 | 47 |
| [functions/add/add_comp.py](/functions/add/add_comp.py) | Python | 24 | 0 | 7 | 31 |
| [functions/add/add_user.py](/functions/add/add_user.py) | Python | 38 | 0 | 11 | 49 |
| [functions/delete_assess.py](/functions/delete_assess.py) | Python | 36 | 0 | 11 | 47 |
| [functions/edit/edit_assess.py](/functions/edit/edit_assess.py) | Python | 51 | 0 | 17 | 68 |
| [functions/edit/edit_assess_results.py](/functions/edit/edit_assess_results.py) | Python | 51 | 0 | 17 | 68 |
| [functions/edit/edit_competency.py](/functions/edit/edit_competency.py) | Python | 52 | 0 | 14 | 66 |
| [functions/edit/edit_user.py](/functions/edit/edit_user.py) | Python | 78 | 0 | 26 | 104 |
| [functions/edit/user_edit_email.py](/functions/edit/user_edit_email.py) | Python | 14 | 0 | 7 | 21 |
| [functions/edit/user_password_update.py](/functions/edit/user_password_update.py) | Python | 14 | 0 | 5 | 19 |
| [functions/enter_to_menu.py](/functions/enter_to_menu.py) | Python | 5 | 0 | 2 | 7 |
| [functions/export_reports_csv.py](/functions/export_reports_csv.py) | Python | 30 | 0 | 14 | 44 |
| [functions/get_current_time.py](/functions/get_current_time.py) | Python | 5 | 1 | 3 | 9 |
| [functions/hash_password.py](/functions/hash_password.py) | Python | 6 | 0 | 4 | 10 |
| [functions/import_assignment_results.py](/functions/import_assignment_results.py) | Python | 9 | 0 | 11 | 20 |
| [functions/login.py](/functions/login.py) | Python | 42 | 5 | 21 | 68 |
| [functions/read_schema.py](/functions/read_schema.py) | Python | 8 | 0 | 2 | 10 |
| [functions/view_search/search_for_users_first_or_last.py](/functions/view_search/search_for_users_first_or_last.py) | Python | 46 | 1 | 11 | 58 |
| [functions/view_search/user_view_comp_results.py](/functions/view_search/user_view_comp_results.py) | Python | 27 | 0 | 12 | 39 |
| [functions/view_search/view_assess_of_user.py](/functions/view_search/view_assess_of_user.py) | Python | 32 | 0 | 13 | 45 |
| [functions/view_search/view_comp_of_one_user.py](/functions/view_search/view_comp_of_one_user.py) | Python | 52 | 0 | 17 | 69 |
| [functions/view_search/view_report_all_users_and_comp_given.py](/functions/view_search/view_report_all_users_and_comp_given.py) | Python | 43 | 0 | 15 | 58 |
| [functions/view_search/view_users_in_list.py](/functions/view_search/view_users_in_list.py) | Python | 13 | 1 | 5 | 19 |
| [import.csv](/import.csv) | CSV | 12 | 0 | 0 | 12 |
| [main.py](/main.py) | Python | 149 | 3 | 27 | 179 |
| [readme.md](/readme.md) | Markdown | 50 | 0 | 45 | 95 |
| [reports.csv](/reports.csv) | CSV | 5 | 0 | 1 | 6 |

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)