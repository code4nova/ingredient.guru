#!/usr/bin/env python3
import psycopg2
import hashlib

def connect(user,dbname="ingredientguru"):
    return psycopg2.connect(f"dbname={dbname} user={user}")

def askforcreds():
    first_name = input("Enter Thou First Name")
    last_name = input("Enter Thou Last Name")
    username = input("Enter Thou Unique Name")
    email = input("Enter Thou Email")
    password = input("Enter Thou Password, its a secret")
    password = hashlib.sha224(password.encode('utf-8')).hexdigest()

    return [first_name, last_name, username, email, password]

def createuser(connection,credentials):
    c = connection.cursor()

    c.execute(f"INSERT INTO users VALUES('{credentials[0]}','{credentials[1]}','{credentials[2]}','{credentials[3]}','{credentials[4]}');")
    connection.commit()
    return "yote"
if __name__ == "__main__":
    c = connect("fcrisafulli")
    creds = askforcreds()
    createuser(c,creds)
    