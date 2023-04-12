import csv

def export_to_csv(list):
  
  header_type = 0

  with open('reports.csv', 'w') as outfile:
      wrt = csv.writer(outfile)

      for i in list:
        if len(i) == 10:
          header_type = 10
          
        elif len(i) == 3:
          header_type = 3
          
        elif len(i) == 5:
          header_type = 5
          
        elif len(i) == 6:
          header_type = 6
          

      if header_type == 10:
          fields = ['user_id', 'first_name', 'last_name', 'phone', 'email', 'password', 'date_created', 'hire_date', 'user_type', 'active']
       
          wrt.writerow(fields) 
          wrt.writerows(list)  
      elif header_type == 3:
          fields = ['comp_id', 'comp_name', 'date_created']
       
          wrt.writerow(fields) 
          wrt.writerows(list)  
      elif header_type == 5:
          fields = ['User ID', 'First Name', 'Last Name', 'Score', 'Date Taken']
       
          wrt.writerow(fields) 
          wrt.writerows(list)  
      elif header_type == 6:
          fields = ['User ID', 'First Name', 'Last Name', 'Hire Date', 'Score', 'Date Taken']

          wrt.writerow(fields) 
          wrt.writerows(list)  
