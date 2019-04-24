import ingredient_user as iu


USERNAME='fcrisafulli'
c = iu.connect(USERNAME)


def modify(user):
    print(""" 
Choose an action
----
[1] Change password
[2] Change email
----
        """)
    user_input = input("   >")
    if user_input == '1':
        user_input = input("[Old Password] ")
        if user_input == user.password:
            user_input = input("[New password] ")
            ui.changepassword(c,user.username,user_input)

        else:
            print("password does not match")
    elif user_input == '2':
        user_input = input("[New Email] ")
        ui.changeemail(c,user.username,user_input)


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
    u = iu.User()
    un = input('[username]')
    pn = input('[password]')
    if u.login(un,pn,c) is True:
        modification(u)
    else:
        print("L")


else:
    print('please choose a number from above')
