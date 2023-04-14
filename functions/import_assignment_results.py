import csv

def import_from_csv():
  data_list = []

  with open('import.csv', 'r') as csvfile:
      csvreader = csv.reader(csvfile)

      fields = next(csvreader)
      
      for row in csvreader:
          data_list.append(row)

  return(data_list)

