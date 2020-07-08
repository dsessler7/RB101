=begin

Problem
* input is a positive integer, n
* output is the nth fibonacci number

Examples
* 

Data Structure
* numerics

Algorithm
* initialize first two numbers of fibonacci sequence
* n.times do
  * add numbers together and store in num2
  * set num1 to last num2
  * return num2

Code

=end

def fibonacci(n)
  num1 = 0
  num2 = 1
  (n - 1).times { num1, num2 = num2, num1 + num2 }
  num2
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
#puts fibonacci(100_001) # => 4202692702.....8285979669707537501
