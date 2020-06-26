=begin

Problem
* input is a string
* output is true or false which is determined by whether all chars in input string are capitalized or not

Examples
* t => false
* T => true

Data Structure
* strings

Algorithm
* string == string.upcase yields true

Code

=end

def uppercase?(input_string)
  input_string == input_string.upcase
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
