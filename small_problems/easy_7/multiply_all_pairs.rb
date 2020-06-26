=begin

Problem
* inputs are two arrays containing numbers
* output is a new array that contains the product of every pair of numbers between the elements of the two arrays
* output array should also be sorted in increasing order

Examples
* multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

Data Structure
* arrays
* numerics

Algorithm
* 

Code

=end

def multiply_all_pairs(ary1, ary2)
  ary1.product(ary2).map { |array| array.inject(:*) }.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
