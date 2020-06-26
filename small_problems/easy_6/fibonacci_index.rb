=begin

Problem
* input is an integer that represents the number of digits
* output is an integer that represents the index of the first number
in the fibonacci sequence that has the specified number of digits (the
first fibonacci number has index 1)

Examples
* 2 => 7        # 1 1 2 3 5 8 13
* 3 => 12       # 1 1 2 3 5 8 13 21 34 55 89 144

Data Structure
* numbers

Algorithm
* initiate current fibonacci number and counter both at 1
* LOOP
  RETURN counter IF the number of digits in fib_num == input
  create new fib_num
  *increase counter
Code

=end

def find_fibonacci_index_by_length(length)
  return 1 if length == 1
  previous_fib_num = 8
  current_fib_num = 13
  index = 7
  loop do
    return index if current_fib_num.digits.size >= length
    previous_fib_num, current_fib_num = current_fib_num, current_fib_num + previous_fib_num
    index += 1
  end
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
