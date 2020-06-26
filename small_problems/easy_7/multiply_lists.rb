=begin

Problem
* inputs are two equal size arrays which each contain numbers
* output is an array that contains the product of the same indexed numbers of the input arrays

Examples
* multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

Data Structure
* arrays
* numerics

Algorithm
* initialize output array of equal size
* array.size.times multiply the current indexed elements and store in output array

Code

=end

def multiply_list(ary1, ary2)
  output_ary = Array.new(ary1.size)
  ary1.size.times { |i| output_ary[i] = ary1[i] * ary2[i] }
  output_ary
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list([-4, 5, -66, 23], [3, 25, -1, 0]) == [-12, 125, 66, 0]

def multiply_list_zip(ary1, ary2)
  ary1.zip(ary2).map { |array| array.inject(:*) }
end

puts multiply_list_zip([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list_zip([-4, 5, -66, 23], [3, 25, -1, 0]) == [-12, 125, 66, 0]
