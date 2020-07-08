def fibonacci_last(n)
  num1 = 0
  num2 = 1
  (n - 1).times { num1, num2 = num2, num1 + num2 }
  num2 % 10
end

# puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# puts fibonacci_last(123456789) # -> 4

def fibonacci_last_fast(n)
  num1 = 0
  num2 = 1
  (n - 1).times { num1, num2 = num2, (num1 + num2) % 10 }
  num2
end

puts fibonacci_last_fast(1000)
puts fibonacci_last_fast(2000)
puts fibonacci_last_fast(3000)
puts fibonacci_last_fast(4000)
puts fibonacci_last_fast(5000)
puts fibonacci_last_fast(6000)
puts fibonacci_last_fast(7000)
puts fibonacci_last_fast(8000)
puts fibonacci_last_fast(9000)
puts fibonacci_last_fast(10000)
puts fibonacci_last_fast(11000)
puts fibonacci_last_fast(12000)
# puts fibonacci_last_fast(15)        # -> 0  (the 15th Fibonacci number is 610)
# puts fibonacci_last_fast(20)        # -> 5 (the 20th Fibonacci number is 6765)
# puts fibonacci_last_fast(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# puts fibonacci_last_fast(100_001)   # -> 1 (this is a 20899 digit number)
# puts fibonacci_last_fast(1_000_007) # -> 3 (this is a 208989 digit number)
# puts fibonacci_last_fast(123456789) # -> 4
# puts fibonacci_last_fast(15)