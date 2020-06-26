=begin

Problem
* input is an array of arrays where subarrays contain a string and a numeric
* output is an array of strings where each string appears the number of times specified in the input subarrays

Examples
* 

Data Structure
* arrays

Algorithm
* input array each with object, 

Code

=end

def buy_fruit(list)
  list.each_with_object([]) do |subarr, output_arr|
    subarr[1].times { output_arr << subarr[0] }
  end
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]
