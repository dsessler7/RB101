=begin

Problem
* inputs are two integers. First arg is a count, second is the first number of a sequence
* output is an array that contains count number of multiples of the starting number
* if count is 0, it should return an empty array

Examples
* 

Data Structure
* numerics
* arrays

Algorithm
* 

Code

=end

def sequence(count, num)
  (1..count).map { |i| num * i }
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
