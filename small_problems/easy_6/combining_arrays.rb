=begin

Problem
* inputs are two arrays
* output is an array that combines all elements from the two input arrays without any duplicate elements

Examples
* [1, 3, 4] and [3, 6, 9] => [1, 3, 5, 6, 9]

Data Structure
* arrays

Algorithm
* concatenate, and uniq 

Code

=end

def merge(ary1, ary2)
  (ary1 + ary2).uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge([4, 4, 4, "hello"], [4, 5, "hello"]) == [4, "hello", 5]
