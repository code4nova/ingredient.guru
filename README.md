
# ingredient.guru
This is the central repo for work on the Ingredient.guru project

## Postgres folder:
Contains all work that has been done on the database side. Includes schemas for the main database and makefiles.

## CRO folder:
Contains experimental builds of CRO stubs; may be bug prone.

### HTML-P6
Is a module for perl6 that substitutes variables in text files for variables in the program. 

>use HTML-P6::Basic;
> interpretBasic "Hi there {{name}}", %dict;

Will return text where {{name}} will be replaced with the corresponding key-value from %dict.
