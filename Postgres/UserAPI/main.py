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
    
    iu.createuser(c,iu.askforcreds())#pn and en are flipped because the database is designed that way
    print("END")

elif user_input == '2':
    u = iu.User()
    un = input('[username]')
    pn = input('[password]')
    if u.login(un,pn,c ) == True:
       iu.removeuser(c,un)
    else:
        print("Not a Valid Username")
    
elif user_input == '3':
    iu.login(c,un,pn)
    un = input('[username]')
    pn = input('[password]')

else:
    print('please choose a number from above')
