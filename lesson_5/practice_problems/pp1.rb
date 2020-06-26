=begin

Problem
* input is an array that contains strings of numbers
* output is the input array with the elements ordered by descending numeric value

Examples
* ['10', '11', '9', '7', '8'] => ['11', '10', '9', '8', '7']

Data Structure
* Arrays
* Strings
* Numerics

Algorithm
* SORT_BY
  * convert item to integer

Code

=end

arr = ['10', '11', '9', '7', '8']

p arr.sort_by { |elem| elem.to_i }.reverse

# OR

p arr.sort { |a, b| b.to_i <=> a.to_i }