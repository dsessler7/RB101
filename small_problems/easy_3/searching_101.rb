=begin

Problem
* input is 6 numbers
* output is essentially a boolean that says whether the 6th number
appeared in the first 5 numbers or not

Examples
* 25, 15, 20, 17, 23, 17 => The number 17 appears in [25, 15, 20, 17, 23]
* 25, 15, 20, 17, 23, 18 => The number 18 does not appear in [25, 15, 20, 17, 23]

Data Structure
* numbers
* arrays
* strings

Algorithm
* Ask for and retrieve 6 numbers from user and place them in an array
* Pop the last number off the array and search the array to see if it exists
among the numbers that remain
* Based on resulting boolean, output string that gives the respective answer

Code

START

WHILE iterations < 7
  GET number from user
  PUSH number into numbers array
POP last number off array and use #include? to search array
PRINT accordingly

END

=end

ordinals = %w(1st 2nd 3rd 4th 5th last)
numbers = []

6.times do |i|
  puts "Enter the #{ordinals[i]} number:"
  numbers.push(gets.chomp.to_i)
end

last_number = numbers.pop
if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end
