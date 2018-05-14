import pymysql
connection = pymysql.connect(host='localhost',
                         user='root',
                         password='',
                         db='image_processing',
                         charset='utf8mb4',
                         cursorclass=pymysql.cursors.DictCursor)

cursor = connection.cursor()
cursor.execute("SELECT * from user")
posts = cursor.fetchall()