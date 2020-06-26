=begin

Problem
* input is a number
* output is the number doubled unless the number is a "double number" 
  * double number is when the first half of the number is the same as the second half (7676, 3333, 44, etc)

Examples
* 

Data Structure
* numerics

Algorithm
* convert number to string
  * IF string.size.even? && string.slice(0, string.size/2 - 1) == string.slice(string.size/2 -1..-1)

Code

=end

def twice(number)
  num_str = number.to_s
  mid = num_str.size/2
  if num_str.size.even? && num_str.slice(0, mid) == num_str.slice(-mid..-1)
    number
  else
    number * 2
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
