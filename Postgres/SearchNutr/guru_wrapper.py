#!/user/bin/env python3
import psycopg2


def connect(user,dbname="ingredientguru"):
    return psycopg2.connect(f"dbname={dbname} user={user}")


def query_ingredients(connection,match):
    cur = connection.cursor()
    cur.execute("SELECT id,short_description FROM ingredient WHERE lower(short_description) LIKE '%{0}%';".format(str(match).lower()))

    return cur.fetchall()


def query_join_nutrient_data(connection,match):
    cur = connection.cursor()
    cur.execute(f"""
        SELECT                                                                                                                                                  
            food_desc.short_description,                                                                                                                   
            nut_def.tag_name,                                                                                                                              
            nut_dat.nutrient_value,                                                                                                                        
            nut_def.units_of_measurement                                                                                                                   
        FROM ingredient food_desc
        LEFT JOIN ingredient_nutrient nut_dat ON food_desc.id = nut_dat.ingredient_id                                                                          
        LEFT JOIN nutrient nut_def ON nut_dat.nutrient_id = nut_def.nutrient_id
        WHERE food_desc.id = {match};
        """)

    return cur.fetchall()


def print_result_ids(result):
    for row in result:
        print(row[0],row[1])


if __name__ == '__main__':
    c = connect('fcrisafulli')
    ingredients = query_ingredients(c,input("Search for a short keyword: "))
    print(ingredients)
    result = query_join_nutrient_data(c,input("Type an ID: "))
    print(result)
