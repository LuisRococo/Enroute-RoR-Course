# https://www.codecademy.com/resources/blog/advanced-ruby-code-challenges/

def number_to_array(number)
  string_array = number.to_s.split('')
  string_array.map { |element| element.to_i }
end

# 1. Re-inventing multiplication
def multiply_by_sum(multiplicand, multiplier)
  result = 0
  multiplier.times { result += multiplicand }
  result
end

# 2. Calculate a javelin throw
def max_height_projectile(speed, angle)
  angle_radians = angle * Math::PI / 180
  calc_piece = speed ** 2
  calc_piece2 = Math.sin(angle_radians) ** 2.to_f
  calc_piece3 = 2 * 9.81
  calc_piece * calc_piece2 / calc_piece3
end

# 3. Calculate the bonus

def worked_days_in_range(work_days, rng_min, rng_max)
  return 0 if work_days < rng_min
  work_days_in_range = (rng_max.nil?) ? work_days : [work_days, rng_max].min
  work_days_in_range = work_days_in_range - rng_min + 1
  [work_days_in_range, 0].max
end

def bonus(work_days)
  bonus = 0

  price = 365
  days_in_range = worked_days_in_range(work_days, 33, 40)
  bonus += days_in_range * price

  price = 525
  days_in_range = worked_days_in_range(work_days, 41, 48)
  bonus += days_in_range * price

  price = 625
  days_in_range = worked_days_in_range(work_days, 48, nil)
  bonus += days_in_range * price
end

# 4. Recursively reverse a string
def reverse_string(string)
  return '' if string.size == 0
  first_character = string[0]
  reverse_string(string.slice(1, string.size)) + first_character
end

# 5. Map the letters of a string
def find_index_of_letters(text, letter_to_find)
  positions = []
  text.each_with_index do |letter, index|
    positions.push(index) if letter == letter_to_find
  end
  positions
end

def map_letters_of_string(text)
  text = text.split('')
  result = {}
  text.map do |letter|
    unless result.key?(letter)
      result[letter] = find_index_of_letters(text, letter)
    end
  end
  result
end

# 6. Count the arguments
def count_args(*args)
  args.size
end

# 7. Is it a new number?
def bigger_number_first?(number)
  numbers = number_to_array(number)
  first_number = numbers[0]
  numbers.none? do |single_number|
    single_number > first_number
  end
end

def leading_zero?(number)
  str_number = number.to_s
  return false if str_number.size.zero?
  str_number[str_number.size - 1] == '0'
end

def new_number?(number)
  bigger_number_first?(number) || leading_zero?(number)
end

# 8. Create a custom subtraction function
def custom_substraction(subtrahend, minuend)
  unless subtrahend.zero?
    borrow = (~minuend) & subtrahend
    minuend = minuend ^ subtrahend
    subtrahend = borrow << 1
  end
  minuend
end

# 9. Poker hand ranking
require_relative './card_hand'

# 10. Sum of digits
def sum_of_digits(num1, num2)
  lowest_value = [num1, num2].min
  higher_value = [num1, num2].max
  result = 0

  (lowest_value..higher_value).to_a.each do |value|
    result += value
  end
  result
end

puts 'Reivent multiplication: '
puts multiply_by_sum(277, 27), "\n"

puts 'Javelin throw: '
puts max_height_projectile(10, 45), "\n"

puts 'Worker bonus: '
puts bonus(44), "\n"

puts 'Reverse string: '
puts reverse_string('hello'), "\n"

puts 'Letter index: '
puts map_letters_of_string("hello"), "\n"

puts 'Count args: '
puts count_args(1,2,3,4), "\n"

puts 'New number: '
puts new_number?(8590), "\n"

puts 'Custom Substraction: '
puts custom_substraction(15, 3), "\n"

puts 'Card combination: '
cards_royal_flush = [
  'AH', 'KH', 'QH', 'JH', 'JH'
]
cards_straight_flush = [
  '7H', '8H', '9H', 'JH', 'QH'
]
cards_four_of_a_kind = [
  '7H', '7D', '7D', '7H', 'QC'
]
cards_full_house = [
  '7H', '7D', '7D', 'QH', 'QC'
]
cards_flush = [
  '3H', 'KH', 'JH', 'AH', 'QH'
]
cards_straight = [
  '3H', '4D', '5H', '6H', '7H'
]
cards_three_of_a_king = [
  '3H', '3D', '3H', '6H', '7H'
]
cards_two_pair = [
  '3H', '3D', '4H', '4H', '7H'
]
card_pairs = [
  '3H', '3D', '5H', '4H', '7H'
]
cards_high_card = [
  '2H', '3D', '5H', '4H', '7H'
]
card_hand = CardHand.new(cards_royal_flush)
puts card_hand.poker_combination
card_hand.set_cards(cards_four_of_a_kind)
puts card_hand.poker_combination
card_hand.set_cards(cards_full_house)
puts card_hand.poker_combination
card_hand.set_cards(cards_flush)
puts card_hand.poker_combination
card_hand.set_cards(cards_straight)
puts card_hand.poker_combination
card_hand.set_cards(cards_three_of_a_king)
puts card_hand.poker_combination
card_hand.set_cards(cards_two_pair)
puts card_hand.poker_combination
card_hand.set_cards(card_pairs)
puts card_hand.poker_combination
card_hand.set_cards(cards_high_card)
puts card_hand.poker_combination
card_hand.set_cards(cards_straight_flush)
puts card_hand.poker_combination, "\n"

puts 'Sum of digits: '
puts sum_of_digits(1, 10), "\n"
