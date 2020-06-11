=begin

Problem
* input is two booleans
* output is exclusive or (outputs true if one input is true and one is false)

Examples
* true, false => true
* false, true => true
* true, true => false
* false, false => false

Data Structure
* number, booleans

Algorithm
* A && !B || !A && B

Code

=end

def xor?(a, b)
  a && !b || !a && b
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false