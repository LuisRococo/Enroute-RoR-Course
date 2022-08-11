
# una función con keyword splat arguments
def print_book_with_author (**book_with_author)
    book_with_author.map do |book, author|
        puts "Book: #{book} -> #{author}"
    end
end

# una función con splat arguments, y argumento normal
def print_name_and_activities (name, *activities)
    puts "I am #{name} and I like to #{activities.join(", ")}"
end

# una función con argumento opcional y argumento normal
def print_car_info (model, number_of_wheels = 4)
    puts "My car´s model is #{model} and has #{number_of_wheels} wheels"
end

# extra, metodo con keys
def get_full_name (first_name:, last_name:)
    puts "My names is: #{first_name} #{last_name}"
end

puts "-"*20
puts "Keyword splat arguments"
books = {
    "Libro Azul": "Federico",
    "Libro Verde": "Martin"
}
print_book_with_author **books

puts "-"*20
puts "Argumentos splat y argumento normal"
print_name_and_activities "Luis", "Play games", "Watch series", "Have little talks"

puts "-"*20
puts "Argumento normal y opcional"
print_car_info "Sedán"

puts "-"*20
puts "Parametros con nombres"
get_full_name last_name: "Peña", first_name: "Luis"
