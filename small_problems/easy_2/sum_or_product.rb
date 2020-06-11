=begin

Problem
* inputs are:
  * integer greater than 0
  * sum or product
* output is either sum or product of all numbers between 1 and the entered number

Examples
* 5 and sum yields 15
* 6 and product yields 720

Data Structure
* numbers

Algorithm
* get number and sum/product selection from user
* use number to create array of numbers from 1 to n
* use inject method to get sum or product of all numbers in array

Code

=end

puts 'Please enter an integer greater than 0:'
n = gets.chomp.to_i
loop do
  break if n > 0
  puts "Input must be an integer greater than 0:"
  n = gets.chomp.to_i
end

puts "Enter 's' to compute the sum, 'p' to compute the product."
o = gets.chomp.downcase
loop do
  break if o == 's' || o == 'p'
  puts "Please only enter 's' or 'p'."
  o = gets.chomp.downcase
end

if o == 's'
  output = (1..n).inject(:+)
  puts "The sum of the integers between 1 and #{n} is #{output}."
else
  output = (1..n).inject(:*)
  puts "The product of the integers between 1 and #{n} is #{output}."
end
