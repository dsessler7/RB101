=begin

Problem
* inputs are an array and a search value
* output is a boolean value that represents whether the array contained the search value

Examples
* [1, 2, 3, 4, 5], 3 => true

Data Structure
* arrays
* objects

Algorithm
* iterate through array
  * return true if element == search_value
* return false

Code

=end

def include?(input_array, search_value)
  input_array.each { |elem| return true if elem == search_value }
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
