import mysql.connector
from mysql.connector import Error

DB_NAME = "alx_book_store"

try:
    # Connect to MySQL server (adjust host, user, password as needed)
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="your_password_here"
    )

    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute(f"CREATE DATABASE IF NOT EXISTS {DB_NAME}")
        print(f"Database '{DB_NAME}' created successfully!")

except Error as e:
    print(f"Error: {e}")

finally:
    # Ensure the connection is closed
    if connection.is_connected():
        cursor.close()
        connection.close()