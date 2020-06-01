=begin

Problem
  * input is positive integer
  * returns the sum of the digits of input number

Examples:
puts sum(23) == 5             #=> true
puts sum(496) == 19           #=> true
puts sum(123_456_789) == 45   #=> true

Data Structure
  * Numbers
  * Array

Algorithm(s):

Alg 1:
  * use digits method to break up number into digits in an array
  * use sum method to add up all numbers in the array and return value

Code

=end

def digit_sum(number)
  number.digits.sum
end

puts digit_sum(23) == 5
puts digit_sum(496) == 19
puts digit_sum(123_456_789) == 45
