=begin

Problem
* input is two positive integers
* output is 6 different arithmetic operations on the two inputs

Examples
* 23, 17 => addition = 40, subtraction = 6, product = 391, quotient = 1, remainder = 6, power = 141050039560662968926103

Data Structure
* numbers

* Strings

Algorithm
* get two numbers from user 
* output various operations and their results

Code

=end

puts "==> Enter the first number:"
first_num = gets.chomp.to_i
puts "==> Enter the second number:"
second_num = gets.chomp.to_i
results = {
  '+' => first_num + second_num,
  '-' => first_num - second_num,
  '*' => first_num * second_num,
  '/' => first_num / second_num,
  '%' => first_num % second_num,
  '**' => first_num ** second_num
}

results.each do |operation, result|
  puts "==> #{first_num} #{operation} #{second_num} = #{result}"
end
