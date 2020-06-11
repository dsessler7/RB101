=begin

Problem
* input is an array
* output is an array of the odd numbered items from the input array

Examples
* [2, 3, 4, 5, 6] => [2, 4, 6]
* ['abc', 'def'] => ['abc']

Data Structure
* arrays

Algorithm
* use #each_index method to iterate through input array
* if index is even, push value into output array

Code

=end

def oddities(input_array)
  output_array = []
  input_array.each_index { |i| output_array.push(input_array[i]) if i.even? }
  output_array
end

def evens(input_array)
  index = 0
  loop do
    break unless input_array.delete_at(index)
    index += 1
  end
  input_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts evens([2, 3, 4, 5, 6]) == [3, 5]
puts evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
puts evens(['abc', 'def']) == ['def']
puts evens([123]) == []
puts evens([]) == []
