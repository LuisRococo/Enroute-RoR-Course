module Taxonomy 
    attr_accessor :family, :order

    def info () 
        puts "Familiy is: #{@family}"
        puts "Order is: #{@order}"
    end
end

class Animal

    extend Taxonomy
    include Taxonomy
    attr_accessor :animal_type

    def initialize (age, animal_type)
        @age = age
        @animal_type = animal_type
    end

    def sleep ()
        puts "The animals is sleeping"
    end

    def self.sound_of_animal ()
        puts "The animals does a sound"
    end

    def get_age ()
        return "The age is #{@age}"
    end

    def set_age (new_age)
        if (new_age < 0)
            puts "No valid argument"
        else
            @age = new_age
            puts "Age changed to #{@age}"
        end
    end
end

# el getter debe tener modificacion en el ouput de la variable
# el setter cualquier tipo de validacion
# dos metodos, uno estatico y el otro de instancia

# crear modulo
# tiene que tener dos metodos
# entener diferencia entre include and extend

gato = Animal.new(10, "Gato")
puts gato.get_age
gato.set_age 22
puts gato.get_age

puts "-"*20
puts "The animal is #{gato.animal_type}"
gato.animal_type = "Gato 2"
puts "The animal is #{gato.animal_type}"

puts "-"*20
Animal.family = "Felidae"
Animal.order = "Carniboro"
Animal.info
puts "-"*20
gato.family = "Felidaes"
gato.order = "Carniboros"
gato.info