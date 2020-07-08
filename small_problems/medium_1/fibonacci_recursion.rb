=begin

Problem
* input is a number, n
* output is the nth fibonacci number
* must create a recursive method

Examples
* 1 => 1
* 2 => 1
* 3 => 2
* 4 => 3

Data Structure
* Numerics

Algorithm
F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2

Code

=end

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
puts fibonacci(40)
