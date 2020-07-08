=begin

Problem
* input is a positive integer
* output is the difference between the square of the sum of the first n integers and the sum of the squares of the first n integers

Examples
* 

Data Structure
* numerics
* arrays

Algorithm
* 

Code

=end

def sum_square_difference(n)
  square_sum = (1..n).to_a.sum**2
  sum_square = (1..n).to_a.inject { |total, num| total + num**2 }
  square_sum - sum_square
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
