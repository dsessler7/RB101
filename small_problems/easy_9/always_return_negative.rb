=begin

Problem
* input is a number
* output is the same number but negative (if input was zero or negative, it is unchanged)

Examples
* 8 => -8
* -2 => -2
* 0 => 0

Data Structure
* Numerics

Algorithm
* if num is greater than zero return -num
else return num

Code

=end

def negative(num)
  num > 0 ? -num : num
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
