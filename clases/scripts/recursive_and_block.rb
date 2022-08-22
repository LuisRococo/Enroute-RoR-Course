def recursive_fibonacci(old_value, new_value, limit)
    return if old_value > limit

    puts old_value

    recursive_fibonacci(new_value, new_value + old_value, limit)
end

def execute_any_function(&block)
    block.call
end

puts "Recursive function"
recursive_fibonacci 0, 1, 100

puts "\nBlock"
execute_any_function { 
    num_a = 0
    num_b = 1
    limit = 10 - 2
    
    puts 0
    puts 1

    limit.times {
        sum = num_a + num_b
        num_a = num_b
        num_b = sum

        puts sum
    }
}
