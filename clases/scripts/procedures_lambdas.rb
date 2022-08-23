# function with lambda and procedure

def function_return
  lambda = -> { return 2 }
  puts "Llamada nuestra lambda"
  return lambda.call
end

puts function_return()

def function_change_var
  number = 20
  my_proc = Proc.new { number = 5 }
  my_proc.call
  puts number
end

function_change_var

# call method with instrospection

class MyClass
    def public_method
        puts "I am a public method"
    end

    protected 

    def protected_method
        puts "I am a protected method"
    end
end
  
method_list = MyClass.public_instance_methods
method_to_call = method_list.find { |method| method == :public_method }
obj = MyClass.new
obj.send(method_to_call)

# cannot use a class from a module inside another class

module MyMathModule

    class MyMathClass
        
        def sum(num1, num2)
            num1 + num2
        end

        def rest(num1, num2)
            num1 - num2
        end

    end

    def return_math_class()
        MyMathClass.new
    end

end

class ClassTest
    include MyMathModule

    def do_operations()
        number1 = 10
        number2 = 20

        # this one throw an error
        # you cannot get a class from the module
        # MyMathClass.new

        # this one does not throw an error
        return_math_class.sum(number1, number2)
    end
end

test = ClassTest.new
puts test.do_operations
