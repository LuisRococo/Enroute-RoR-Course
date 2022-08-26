Name: Luis Roberto Peña Valenzuela
Date: 26-08-22

1. How do we format a string multiple times?
-
Using % and format
Example:
text = "My name is %s and I am %i years old"
puts format(text, 'Luis', '24')

2. When should you use case vs if elsif else?
-
It is better to use case when we are comparing the value of just one variable.
If, elsif and else can be use better for more complex conditions. 

3. Using best practices, define an if else construct with variable a == (x % 2).even?
if (a == (x % 2).even?)
    puts "even"
else
    puts "Odd"

4. Exemplify the usage of times, upto and downto. 
-
*times -> creates a loop that iterates from 0 to the number value where the method is beign called.
    10.times { |i| print i } ===> 1,2,3,...,9
*upto -> goes from the integer value to the value you pass as a parameter
    10.upto(15) { |i| puts i } ==> 10,11,...,15
*downto -> goes from the integer value to the parameter in descendant order
    10.downto(5) { |i| puts i } ==> 10,9,8,...,5

5. Exemplify the usage of each.
-
You use it to iterate over values, it is useful whenever you want to do an operation with each value of an array

Example (numbers to string line): 

string_numbers =  ''
numbers = (1..10).to_a
numbers.each { |number| string_numbers += number.to_s + ', ' }
puts string_numbers

6. What is the difference between each and map?
-
*Each -> Returns the same array and you cannot modify its content.
*Map -> You can modify its content and returns an edited array. 

7. Exemplify the usage of inject. 
-
It can be use to process all values inside an array and return only one value.

Example (sum all numbers from array ignoring nil)

array = (1..10).to_a
array.push(nil)
sum_result = array.inject do |sum, value|
    sum += value unless value.nil?
    sum
end
puts sum_result

8. How do we define an attribute getter and setter (use two ways)? 
-
attr_reader -> getter only
attr_setter -> setter only
attr_accessor -> setter and getter

9. How do we define a block? 
-
Use keys and add the code inside. If you need parameters add them between "|"
You can also replace the keys symbol to "do" and "end".
Example:
{ |name| "My name is #{name}" }

10. How do we define a lambda? How do we use it? 
You used them when you want the lambda to have its own context. 
To call them you can use .call if you have the reference or yield if you are inside a function. 

Example:
lambda = -> (name) {"My name is #{name}"}
lambda.call 'Luis'

11. How do we define a recursive function properly? 
A recursive function is the one that make calls to itself. 
To use them properly you need to have a condition that will stop the function to call itself. 

12. How do we define a proc and call it? 
-
To call them you can use .call if you have the reference or yield if you are inside a function. 

proc = Proc.new { |name| "My name is #{name}" }
proc.call

13. What is the difference between procs and lambdas? 
The context.
proc -> Procs are able to access the context outside of them. 
lambdas -> Lambdas only have their own context. 
