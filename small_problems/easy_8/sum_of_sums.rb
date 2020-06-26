=begin

Problem
* input is an array of numbers
* output is the sum of the sums of each leading subsequence of the input array

Examples
* sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

Data Structure
* array
* numerics

Algorithm
* array.inject with block

Code

=end

def sum_of_sums(input_array)
  running_total = 0
  final_subset = input_array.inject(0) do |subset, elem|
    running_total += subset
    subset + elem
  end
  running_total + final_subset
end

puts sum_of_sums([3, 5, 2]) == 21
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
