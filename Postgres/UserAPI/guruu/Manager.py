import psygopg2


class Manager:
    def __init__(self,connection):
        self.c = connection
    def create_user(self,username,password):


def connect(user,dbname="ingredientguru"):
    return psycopg2.connect(f"dbname={dbname} user={user}")
