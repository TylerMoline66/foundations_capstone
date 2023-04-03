# Welcome to my Competency Tracker!

Hello! This application is meant to give the managers access to their employees competencies and information and for employees to see their own competencies and change their own information.

### Steps to get started

1. Run pipenv install
2. Run pipenv shell
3. Then run the main.py file to get the program rolling

## User

Login in using your username and password like so:
---> login: email@email.com
---> password: xyz123

You will then be in the program logged in as the user. There will be a menu for the user to access the information about that specific user. you can:

1. Change username
2. Change password
3. View that specific users competency assessments
4. logout

After using any of those menu options you will return to the menu above, and once you have completed the tasks you would like you can logout.

## Managers

Signing in as a manager is the same as a user:
---> login: email@email.com
---> password: xyz123

You will then be in the program logged in as a manager. This menu is larger and has some sub menus. it will look have the options mentioned below:

1. View or search options
   -View all users in a list
   -Search for user by first or last name
   -View a report of all users and their competency levels for a given competency
   -View a list of assessments for a given user
   -Quit
2. Add options
   -Add a user
   -Add a new competency
   -Add a new assessment to a competency
   -Add an assessment result for a user for an assessment (this is like recording test results for a user)
   -Quit
3. Edit options
   -Edit a user's information
   -Edit a competency
   -Edit an assessment
   -Edit an assessment result
   -Quit
4. Delete options
   -Delete an assessment result
   -Quit
5. logout

After using any of those menu options you will return to the menu above, and once you have completed the tasks you would like you can logout.
