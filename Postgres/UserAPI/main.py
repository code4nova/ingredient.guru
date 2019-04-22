import ingredient_user as iu


USERNAME='fcrisafulli'
c = iu.connect(USERNAME)


print(""" 
    Choose an option
    -----
    [1] Create Account
    [2] Delete Account
    [3] Sign In
    -----
    """)

user_input = input("   >")

if user_input == '1':
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
            print("passwords do not mccctch")
    iu.createuser(c,[fn,ln,un,pn,en])#pn and en are flipped because the database is designed that way
    print("END")

elif user_input == '2':
    pass
elif user_input == '3':
    un = input('[username]')
    pn = input('[password]')
else:
    print('please choose a number from above')
