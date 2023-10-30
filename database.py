import mysql.connector

# estabelecer ligação à BD no localhost
conn = mysql.connector.connect(user = 'root', host = 'localhost', database = 'wortendb', autocommit = True)

# Cursor para executar comandos na BD
cursorObject = conn.cursor()
