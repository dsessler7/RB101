=begin

Problem
* inputs are current age and age at which you'd like to retire
* Output is the year the user will retire and the number of years they have left to work

Examples
* Current age 30 and retire age of 70 yields a retirement year of 2056 with 40 years of work left

Data Structure
* numbers
* date

Algorithm
* capture age and retirement age
* get current year
* calculate and output retirement year
* calculate and output years left to work

Code

=end

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
age_retire = gets.chomp.to_i

puts "It's #{Time.now.year}. You will will retire in #{Time.now.year + age_retire - age}."
puts "You only have #{age_retire - age} years of work to go!"
