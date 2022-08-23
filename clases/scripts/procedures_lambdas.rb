# rescue => exception
  
# end
# def function_lambda
#   lambda = -> { return 2 }
#   puts "Llamada nuestra lambda"
#   return lambda.call
# end

# puts function_lambda()

# def function_proc
#   number = 20
#   my_proc = Proc.new { number = 5 }
#   my_proc.call
#   puts number
# end

# function_proc()

class Gp
    def public_method
      puts "Peña estuvo aqui en publico"
    end
  
    protected 
    def protected_method
      puts "Peña estuvo aqui en protected"
    end
  end
  
  puts Gp.protected_instance_methods[0]
  
  #Gp.send(:public_method)
  Gp.new.public_method
