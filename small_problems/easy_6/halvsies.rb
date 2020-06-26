=begin

Problem
* input is an array
* output is two arrays (as a pair of nested arrays) that contain the first and second halves of the input array
* for odd numbered arrays, the middle element goes in the first array

Examples
* [1, 2, 3, 4] => [[1, 2], [3, 4]]
* [1, 5, 2, 4, 3] => [[1, 5, 2], [4, 3]]

Data Structure
* Arrays

Algorithm
* create empty output_array
* calculate halfway point
* iterate through input_array
  * if index is past halfway point, you are placing elements in second array
  * else, place in first array

Code

=end

def halvsies(input_array)
  output_array = [[], []]
  halfway = input_array.size / 2
  halfway -= 1 if input_array.size.even?

  input_array.each_with_index do |elem, i|
    if i > halfway
      output_array[1][i - halfway - 1] = elem
    else
      output_array[0][i] = elem
    end
  end

  output_array
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
