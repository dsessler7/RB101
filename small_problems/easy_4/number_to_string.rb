=begin

Problem
* input is a positive integer
* output is that integer in string format

Examples
* 

Data Structure
* numbers
* strings

Algorithm
* use digits to get the digits
* use a hash to convert each digit to a string verson of the number and concat as you go

Code

=end
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  string = ''
  number.digits.reverse.each { |num| string << DIGITS[num] }
  string
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'