import datetime
import mysql.connector

cnx = mysql.connector.connect(user='root', database='image_processing')
cursor = cnx.cursor()

query = ("SELECT First_Name, Last_Name FROM users ")
cursor.execute(query)
for (First_Name, Last_Name) in cursor:
  print("{}, {}".format(
    Last_Name, First_Name))

cursor.close()
cnx.close()
