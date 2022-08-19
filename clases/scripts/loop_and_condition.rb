# condition
user_input = gets.chomp

unless user_input == "Apple"
    puts "If condition was executed"
end

# loop
for number in (5..5000)
    puts "Checking for number #{number}"
    next unless number.even?
    puts "Number #{number} is even"
end
