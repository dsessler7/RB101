=begin

Problem
* Randomly generate a number between 20 and 200
* Print it out as teddy's age

Examples
* "Teddy is 69 years old!"

Data Structure
* Numbers
* Strings

Algorithm
* Use Random class to generate number
* puts a string declaring Teddy's age

Code

=end

puts "What's your name?"
name = gets.chomp
name = 'Teddy' if name.empty? 
prng = Random.new
puts "#{name} is #{prng.rand(20..200)} years old!"
