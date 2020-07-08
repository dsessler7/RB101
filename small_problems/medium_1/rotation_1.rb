=begin

Problem
* input is an array
* output is a new array that takes the input array and moves the first element to the end

Examples
* [1, 2, 3] => [2, 3, 1]

Data Structure
* Arrays

Algorithm
* array << array.unshift

Code

=end

def rotate_array(input_array)
  output_array = Array.new(input_array.size)
  input_array.each_with_index { |elem, i| output_array[i - 1] = elem }
  output_array
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']
x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

def rotate_string(input_string)
  rotate_array(input_string.chars).join
end

puts rotate_string('Hello World') == 'ello WorldH'

def rotate_integer(input_int)
  rotate_array(input_int.digits.reverse).join.to_i
end

puts rotate_integer(12345) == 23451
