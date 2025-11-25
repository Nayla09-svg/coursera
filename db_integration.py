
import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="little_lemon"
)

cursor = connection.cursor()

cursor.execute("SELECT * FROM Customers")
for row in cursor.fetchall():
    print(row)

cursor.close()
connection.close()
