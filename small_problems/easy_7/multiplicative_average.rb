=begin

Problem
* input is array of integers
* output is the multiplicative average of all numbers in the input array
* output should be rounded to 3 decimal places

Examples
* 

Data Structure
* array
* numeric

Algorithm
* array.inject(:*)/array.size

Code

=end

def show_multiplicative_average(array)
  multiplicative_avg = array.inject(:*) / array.size.to_f
  puts format("The result is %.3f", multiplicative_avg)
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
