Name: Luis Roberto Peña Valenzuela
Date: 25-08-22

1. Define three ways of declaring and instancing a string. 
-
"This is a String"
%(This is a String)
%{This is a String}

2. What does gsub does? 
-
It replaces all substring by another one using a plain String or a regex condition.

3. What is a symbol? 
-
In ruby is used as an identifier. It is similar to a String but its content is not so important.
Its sintaxis is ":name"

4. If we define three symbols, with the same value, :example, and the second has object id 437768 what would the object_id of the other two would be? 
-
Will be the same (437768)

5. What is reflection in programming? 
-
It is when a programm is able to be aware of its own code. 
For example, to be able to see its own methods and attributes and probably beign able to modify them at run time. 

6. Define the usage of the three metaprogramming methods. 
-
*method -> executes a method that is not declared inside a class
*send -> executes a class method
*eval -> executes ruby code inside a string

7. How do we access the symbols table? 
-
Using the method "all_symbols" from Symbol class
Symbol.all_symbols

8. How do we define a hash? 
-
One ways is:
"{ one: 1, two: 2, three: 3 }"

9. Define three methods for a hash and their usage. 
-
*keys -> get all the keys
*key? -> returns true if an specific key name was found
*value? -> returns true if an specific value name was found

10. How do we define and instance a Time variable? 
-
Time class allows us to to save and do operations with dates and times. 
One way to create it:
"todays_date = Time.now"

11. How do we access the day of the time? 
"Time.now.day"

12. Elaborate an script that has all requirements to run and exemplify the usage of three methods for Date. Please consider you would need to store the Date in a variable. 
-
require 'Date'

today_date = Date.today

# formatting
puts today_date.strftime "Todays date is %d/%m/%y"

# getting day
day = today_date.day
puts "Today is #{day}"

# check the week day
if (today_date.thursday?)
    puts "Today´s is thursday"
else
    puts "Today´s is not thursday"
end

13. What is ActiveSupport? 
-
ActiveSupport are auxiliary methods and functionality that Rails includes. 
It includes also extra functionality related to dates
for example, you can use an Integer as an day or month to do operations with Time objects.

14. How do we format a string in a single line? 
-
"My name is %s and my age is %i" % ['Luis', 24]
