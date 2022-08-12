puts "Binary -> Decimal"

# 111111 a 1 (decimal) usando >>
binary = "111111"
number = binary.to_i(2)
result = number >> 5
puts "#{result.to_s(2)} -> #{result}"

# 0000110 a 1 (decimal) usando >>
binary = "0000110"
number = binary.to_i(2)
result = number >> 2
puts "#{result.to_s(2)} -> #{result}"

# 1111111 a 2 (decimal) usando ^
binary = "1111111"
number = binary.to_i(2)
result = number ^ "1111101".to_i(2)
puts "#{result.to_s(2)} -> #{result}"