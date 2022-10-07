* In Ruby, how do we return multiple variables and assign them where we use that method in particular? 
---  

* Elaborate on the description of two design patterns. 
Singleton: Allows a class to only be instantiated only one time.  
Observer: Allows a class to notify all its observers when a certain action is executed.  

* Define three form helpers  
text_field  -> Creates a tex input  
number_field  -> Creates a number input  
email_field  -> Creates a text input that validates if it contains an email  

* What is the Rubocop convention for constants in Ruby? 
Use uppercase.  

* What are keyword splat arguments? 
Are used to receive any key-value paramater the user sends as a hash inside a function.

* How do we define an inclusive range?
Using only two dots, example:  
1..10  

* What is the preferred way to interpolate variables in a string? 
Using double quoted strings and adding inside of it #{}. Example:  
"My name is #{name}"

* Explain what lambdas are and exemplify how they are declared. 
Lambda are one type of block that has its own context.  
Example:  
my_lambda = <- { puts 'Something' }

* What is the symbols table and how do we access to it? 
The symbol table contains all the symbols created during the execution of a Rails app.  
You access it with: 
Symbols.list_all  

* For what is the method strftime? 
This method allows to create a custom formatted string from a Time object.

* What is ActiveSupport and exemplify some useful methods available through it. 
ActiveSupport contains some utility methods that you can use on your rails app.  
Example of methods:  
1.day -> Transform number to a day so you can use it to perform operations on dates.  
date1 - date2 -> Allows to rest or add two dates.  

* Elaborate on three software development best practices.
Follow SOLID principles.  
Do not repeat yourseld (DRY).  
Develop ruby following COC.  

* What is the difference between if, unless, while, and until. 
if/unless -> The difference is that 'unless' is an inverted if.  
while/until -> The difference is that 'until' runs until the condition is 'true'  

* Exemplify the usage of downto.  
Creates an loop from an integer at inverse order.  

* Explain the main concepts of SOLID.
-- Single responsability principle: A class should be an expert doing only one thing.  
-- Open/Close: A class should be closed to modifications and open for adding new functionalities on it.  
-- Liskov principle: All child objects from a parent class, should be able to be implemented on the same context without any problems.  
-- Interface segregation: Implement an interface into a class should do not leave any unused methods.  
-- ... Dependency: All implementations of a class should be done through an abstraction.  

*  Define what is the object space.  
Is where you can find all the objects created on the application.  

* What is metaprogramming and explain the three methods for it?  
Metaprogramming allows the programm to be aware of its own code and use it.  
-- .send -> executes a method from an object instance.  
-- There is another one that executes a function that is outside an instance.  
-- There is another method than runs ruby code beign pass as a string parameter.  

* How do we recover from Memory Loops and Performance Issues? 
We can use some tools that allows us to check the performance and find these memory loops.  

* What is Authorized Persona? 
Is a gem used by Betterment, allows to have multiple levels of authentication on a rails application.  

* How do we access to the internationalization translate method?  
You access it from the i18n class.  

* What does name-spacing a resource mean?
Adds another url "section" before an url. Example:  
--Namespace name: 'admin'  
--Routes:  
/admin/users  
/admin/configuration  

* How do we rescue from errors in controllers?
You can use rescue like this:  
```
def create
    ...
rescue
    redirect_to error_page_path
end
```  

* What are filters and how do we avoid using them in a certain aciton? 
Filters allows to execute code before/after/during an action.  
You avoid using one with the 'skip_before_action' method.  

* How do we bring objects through batches in ActiveRecord? 
You can use a batch with 'find_each':  
```
@items.find_each do |item|
    ...
end
```

* Explain what is Sidekiq?
Sidekiq is a gem that allows us to run jobs from rails.  

* How do we define three different relationships in a Model?  
One to one -> belongs_to and has_one  
One to many -> belongs_to and has_many  
Many to many -> has_many :table, through: :middle table...  

* Explain what is MVC.
Is a way to organize the architecture of a server.  
Model -> Is the part that has access to the database items.  
View -> Is the part that defines the user iterface.  
Controller -> Is the part that executes the logic and calls the view and the model.  

* How do we replace text in a string using Regex?
You can use 'gsub' method:  
```
sentence.gsub(regex, new_string)
```

* What is Ruby on Rails? 
Is a ruby framework focused on creating quick server applicatons while being programmer friendly.  

* Elaborate on three best practices for Ruby on Rails.  
Follow DRY -> Try to do not repeat code.  
Follow COC -> Ruby uses a lot of conventions, if you do not follow them you will have a hard time programming.  
Use presenters, concerns and helpers -> They help us to organize better the logic of our application.  
