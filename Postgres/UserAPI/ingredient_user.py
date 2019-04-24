#!/usr/bin/env python3


import psycopg2
import hashlib


class User:
    def __init__(self):
        self.authentication = None
        self.password = None
        self.username = None

    def login(self,username,pass_string,connection):
        c = connection.cursor()
        c.execute("SELECT * FROM users WHERE username = '{0}';".format(username))
        user_data = c.fetchall()
        if user_data == []:
            return False
        if user_data[0][3] == hashlib.sha224(pass_string.encode('utf-8')).hexdigest():
            self.authentication = user_data[0][3]
            self.username = username
            self.password = pass_string
            return True
        else:
            return False


def connect(user,dbname="ingredientguru"):
    return psycopg2.connect(f"dbname={dbname} user={user}")


def askforcreds():
      fn = input('[first name] ')
      ln = input('[last name] ')
      un = input('[username] ')
      en = input('[email]')
      pn = ''
      while True:
          pn = input('[password]')
          if input('confirm password  ') == pn:
              break
          else:
              print("passwords do not match")
      pn = hashlib.sha224(pn.encode('utf-8')).hexdigest()

      return [fn, ln, un, pn, en]


def createuser(connection,credentials):
    c = connection.cursor()
    c.execute(f"""INSERT INTO users VALUES
            ('{credentials[0]}',
            '{credentials[1]}',
            '{credentials[2]}',
            '{credentials[3]}',
            '{credentials[4]}');""")
    connection.commit()

    return "yote" # make applicable to doctest?


def removeuser(connection,username):
    c = connection.cursor()
    c.execute(f"DELETE FROM users WHERE username = '{username}';")
    connection.commit()


if __name__ == "__main__":
    c = connect("fcrisafulli")
    creds = askforcreds()
    createuser(c,creds) 
