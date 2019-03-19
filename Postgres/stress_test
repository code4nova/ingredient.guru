#!/usr/bin/env python3
import psycopg2
import datetime
import sys


connection = psycopg2.connect("dbname=ingredientguru user=abuchholz")
cur = connection.cursor()
print("Connection successful")
print("Start Time\t",datetime.datetime.now())

for x in range(int(sys.argv[1])):
    cur.execute("SELECT * FROM ingredient_nutrient WHERE ingredient_id=21021;") 

print("End Time\t",datetime.datetime.now())

