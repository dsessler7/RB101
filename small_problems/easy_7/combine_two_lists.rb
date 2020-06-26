=begin

Problem
* inputs are two non-empty arrays of equal size
* output is one array with all elements from two input arrays, taken in alteration

Examples
* [1, 2, 3] & ['a', 'b', 'c'] => [1, 'a', 2, 'b', 3, 'c']

Data Structure
* arrays

Algorithm
* zip and flatten

Code

=end

def interleave(ary1, ary2)
  ary1.zip(ary2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
puts interleave([5, 4, 3, 2], [2, 3, 4, 5]) == [5, 2, 4, 3, 3, 4, 2, 5]
