=begin

Problem
* input is a string
* output is sum of the ascii values of each character in input string

Examples
* 'four score' => 984
* 'Launch School' => 1251
* ' ' => 0

Data Structure
* strings
* numbers

Algorithm
* use chars method to get array of characters of string
* use inject method to iterate through array and get the sum of the ascii values (using ord method)

Code

=end

def ascii_value(input_string)
  input_string.chars.inject(0) { |sum, char| sum + char.ord }
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0