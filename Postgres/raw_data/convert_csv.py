with open("bad_food.csv","rb") as bad_file:
        zero=bad_file.read().replace(b",",b" WM ")
        one=zero.replace(b"^",b",")
        two=one.replace(b"'",b"")
        three=two.replace(b"~",b"'")
        four=three.replace(b'"',b"in")
        #print(one)
        with open("new_desc.csv", "wb") as new_csv:
            new_csv.write(four)
