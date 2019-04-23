import psycopg2
class User:
    def __init__(self):
        self.username = None
        self.hash = None
        self.logged_in = False
    def login(connection,username,password):
        c = connection.cursor()
        c.execute("SELECT * FROM users WHERE username = '{0}';".format(username))
        user_data = c.fetchall()
        if user_data == []:
            return False
        if user_data[0][3] == hashlib.sha224(pass_string.encode('utf-8')).hexdigest():
            self.hash = user_data[0][3]
            self.username = username
            self.logged_in = True
            return True
        else:
            return False 
