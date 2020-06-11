=begin

Problem
* input is array of numbers
* output is same sized array with running totals

Examples
* [2, 5, 13] => [2, 7, 20]
* [3] => [3]

Data Structure
* arrays
* numbers

Algorithm
* set total variable to zero
* use map to iterate through input array returning total plus current value

Code

=end

def running_total(array)
  total = 0
  array.map { |num| total = total + num }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
puts running_total([3, -6, 25, 0, -22]) == [3, -3, 22, 22, 0]

def running_total2(array)
  total = 0
  array.each_with_object([]) { |num, a| a << total += num }
end

puts running_total2([2, 5, 13]) == [2, 7, 20]
puts running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total2([3]) == [3]
puts running_total2([]) == []
puts running_total2([3, -6, 25, 0, -22]) == [3, -3, 22, 22, 0]

def running_total3(array)
  output_arr = []
  return output_arr if array.empty?
  output_arr << array.inject do |acc, elem| 
    output_arr << acc
    acc + elem
  end
  output_arr
end

puts running_total3([2, 5, 13]) == [2, 7, 20]
puts running_total3([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total3([3]) == [3]
puts running_total3([]) == []
puts running_total3([3, -6, 25, 0, -22]) == [3, -3, 22, 22, 0]
