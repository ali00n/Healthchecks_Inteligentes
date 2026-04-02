import mysql.connector

class DbCheck:
    def __init__(self, host, user, password, database):
        self.host = host
        self.user = user
        self.password = password
        self.database = database

    def verify(self):
        try:
            conn = mysql.connector.connect(
                host=self.host,
                user=self.user,
                password=self.password,
                database=self.database
            )
            if conn.is_connected():
                conn.close()
                return True, "OK"
        except Exception as e:
            return False, str(e)
        return False, "Unknown Error"
