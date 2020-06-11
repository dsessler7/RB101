=begin

Problem
* input is the upper limit of a range starting with 1
* output is the sum of all multiples of 3 and 5 within that range

Examples
* 3 => 3
* 5 => 8
* 10 => 33
* 1000 => 234168

Data Structure
* numbers
* range?

Algorithm
* create range and iterate through it selecting numbers that are multiples of 3 and 5
* find sum of resulting set of numbers

Code

=end

def multisum(n)
  (1..n).select { |num| num % 3 == 0 || num % 5 == 0 }.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168