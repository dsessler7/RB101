=begin

Problem
* input is an integer
* output is an array of all integers in sequence between 1 and the input number

Examples
* 3 => [1, 2, 3]

Data Structure
* numerics
* arrays

Algorithm
* 

Code

=end

def sequence(num)
  num >= 1 ? 1.upto(num).to_a : 1.downto(num).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
puts sequence(-5) == [1, 0, -1, -2, -3, -4, -5]
