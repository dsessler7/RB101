=begin

Problem
* input is a positive integer
* output is that number with its digits reversed

Examples
* 12345 => 54321

Data Structure
* Numeric
* arrays?

Algorithm
* digits join to_i

Code

=end

def reversed_number(input_int)
  input_int.digits.join.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
