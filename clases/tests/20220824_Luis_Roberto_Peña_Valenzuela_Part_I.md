1. Please define a raw abstract of a transaction, it can include between 3 and 5 operations. The transaction must be rollbacked.
-
BEGIN
    INSERT INTO table_1 (DEFAULT, 1,2);
    DELETE FROM table_2
        WHERE value = 10;
    UPDATE table_3
        SET value = 20
        WHERE value_2 = 80;
ROLLBACK

2. Please define a PostgreSQL function that returns true or false if the selected number is even. 
-
CREATE OR REPLACE FUNCTION is_number_even(number_to_process INTEGER) 
RETURNS BOOLEAN
LANGUAGE PLPGSQL
AS 
$$
BEGIN
	IF number_to_process % 2 = 0 THEN
		RETURN TRUE;
	ELSE
		RETURN FALSE;
	END IF;
END
$$ 

SELECT is_number_even(2);
SELECT is_number_even(3);

3. What is an aggregate function and define what do they need to work. 
-
An aggregate function process groups of rows.
To work, you need to use group by clause on a query. 
Then you write the function on the select area an give it a column or more to process.

4. Please define a custom aggregate function.
-
It is an aggregation function that you can create.
You need to define the initial value, a function that will be iterating over the rows,
optionally a function that will be executed at the end and the datatype of the value that will be returned.

DECLARE FUNCTION sum_function ...;
DECLARE FUNCTION sum_final_function ...;

CREATE AGGREGATE custom_sum(INTEGER)
(
    INITCOND = 0,
    STYPE = INTEGER,
    SFUNC = sum_function,
    FINALFUNC = sum_final_function
);

5. Between what clauses do the HAVING clause execute?
-
Between Group by and select

6. What types of views are stored in memory? Please define a way to use them (not create them). 
-
Only materialized views can store the query into memory. 
They are useful to increase performance since the query is already there. 
You create one with "CREATE MATERIALIZED VIEW ..." then you can add an index to them so it can be update automatically by changes on the table.
You can also refresh them manually to get the updated values. 
Also they if they are not materilized and does not have the "check" restriction. You can edit tables with them. 

7. How do you declare a cursor?
-
For the basic cursor you use:
"DECLARE [name of the cursor] CURSOR FOR [insert query]"

8. What is an asensitive cursor? 
-
If a cursor is asensitive, then if the table that this cursor is trasversing is updated, it will show the updated values.

9. How do we define a custom cast?
-
You use keyword:
"create cast (original_type AS resutl_type)"
Then you can pass a function that will make the conversion 

10. What command do you use to bring the commit with hash 3c94f71fdf813bc475cb13f8f90b83de9cc475cb to the current branch? 
-
You can use cherry pick
"git cherry-pick 3c94f71fdf813bc475cb13f8f90b83de9cc475cb"

11. How do you mix the branches chore/configuration and chore/setup?
-
You use a commit or a rebase
First you go to configuration branch with "git checkout configuration"
The you use one of these two:
*git merge setup
*git rebase setup

12. How do you make a commit? 
-
First you add files to staging area with "git add -A"
Then you use "git commit -m 'Commit message'"

13. What HTTP methods are idempotent? 
GET, PUT, DELETE

14. Please define the A PIE of Object Oriented Programming. 
-
A PIE is a way to rememeber the four pillars of OOP
*Abstraction -> when you abstract login or real life objects into a class.
*Polymosphism -> when a  class can be replaced by another one
*Inheritance -> when a child class get methods and properties from its paren class
*Encapsulation -> not showing to the exterior some methods and properties. 

15. Define a polymorphic method in Ruby. 
-
It is when you can use the same method name having two objects from different classes. 

16. Define the usage of super and explain what is the difference between using parenthesis or not. 
-
Super allows to call the father method from a class. If you dont use parenthesis, you are going to use all the parameters from the method it is beign called. 

17. What is the difference between include and extend? 
-
Include -> add methods and attributes accessible only by instantiating the class
Entend -> add class methods and attributes

18. Define what is a class method? 
-
Is a method that can be called without class instantiation.

19. Define what is an instance method? 
-
It is a method that only can be called when you create an object from a class. 

20. What is IRB?
-
It is a way to run ruby code in our terminal at run time.
It interprets code at the moment. 

21. How do we know what type of class is a variable? 
-
We call the method/property "class"
class_example.class

22. How do we define a binary number? 
-
We can create one using "number.to_s(2)"
It will return a string representation of a binary number. 

23. What are keyword splat arguments? Define the difference with splat arguments.
-
*Keyword splat arguments are usually used with hashes, it is a way to pass a hash to a function. 
*One splat argument is used to receive an undefined quantity of parameters as an array. 

24. How do we define a range?
-
Using two numbers or a string aroud three or two dots
Example: 1..10

25. How do we modify arrays? 
-
Example: array[0] = "updated element"
If you want to add an item you can use "push method" or "<<" operator.  

26. Define three methods for arrays and their usage. 
-
push -> add an item at the end
delete -> delete an item using an index
map -> allows to trasverse an array item by item

27. Define three methods for Numeric and their usage. 
-
abs -> returns a positive value on the number
ceil -> if number decimal, returns the closest integer that is bigger. 
floor -> if number is decimal, returns the closest integer that is smaller. 

28. Define three methods for String and their usage. 
-
gsub -> allows to change multiple words for another one. It also works with regex
count -> count chars or substrings
empty? -> checks if a string has 0 chars

29. Elaborate and explain the six assignment combined operators. 
-
+= -> sum and assign
-= -> rest and assign
*= -> multiply and assign
/= -> divide and assign
**= -> power of and assign
%= -> module of and assign

30. What is the spaceship operator? How does it look like? 
-
It looks like "<=>"
Compares string and numbers
With numbers it compares if the first value is bigger, smaller or equals to another value.
It also checks if both values are from the same datatype. Returns nil if they are not. 
For the rest of the operations returns 1,0,-1
