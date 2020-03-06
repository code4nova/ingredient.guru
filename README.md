
# ingredient.guru
This is the central repo for work on the Ingredient.guru project

## Postgres folder:
Contains all work that has been done on the database side. Includes schemas for the main database and makefiles.

## CRO folder:
<<<<<<< HEAD
Contains experimental builds of CRO stubs; may be bug prone.

### HTML-P6
Is a module for perl6 that substitutes variables in text files for variables in the program. 
=======
Contains experimental builds of CRO stubs; may be bug prone. The main folder is "cro" which includes the HTML and perl files required to run the CRO server

## cro
Contains the current project being worked on
* Sessions and Auth using CRO
* Everything else

### crotest
Contains the latest updated code with all the features
* Cookies
* Register
* Login/Authentication (Old Way)
* Registering Info to SQLite3 Database
>>>>>>> f5e9a0d2688805fc067639cff4544a49b3fc88ce

> use HTML-P6::Basic;

<<<<<<< HEAD
> my %dict = name => "Jeff";

> interpretBasic "Hi there {{name}}!", %dict;

    Hi there Jeff!

Will return text where {{name}} will be replaced with the corresponding key-value from %dict.
=======
### test
Will contain information on the majority of test performed, while performing test driven development.
>>>>>>> f5e9a0d2688805fc067639cff4544a49b3fc88ce
