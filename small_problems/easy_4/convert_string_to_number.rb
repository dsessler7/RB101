=begin

Problem
* input is a string of numbers
* output is the string of numbers but in integer form

Examples
* '4321' = 4321

Data Structure
* strings
* numbers

Algorithm
* break string into array of chars
* create hash or case statement for each number so that '1' outputs 1 etc
  * use hash or case statement to create array of numbers
  * iterate through array using iteration number to act as the power of 10
  to convert digit to respective decimal place and add them all together

Code

=end

def string_to_integer(string_numbers)
  numbers = {
    '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
    '8' => 8, '9' => 9, '0' => 0
  }
  str_digits = string_numbers.chars.reverse
  num_digits = str_digits.map { |str| numbers[str] }
  sum = 0
  num_digits.each_with_index { |num, i| sum += num * 10**i }
  sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

def hexadecimal_to_integer(string)
  numbers = {
    '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
    '8' => 8, '9' => 9, '0' => 0, 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13,
    'e' => 14, 'f' => 15
  }
  str_digits = string.downcase.chars.reverse
  num_digits = str_digits.map { |str| numbers[str] }
  sum = 0
  num_digits.each_with_index { |num, i| sum += num * 16**i }
  sum
end

puts hexadecimal_to_integer('4D9f') == 19871
