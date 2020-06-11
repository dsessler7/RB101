=begin

Problem
* inputs are bill total and tip percentage
* outputs are the tip amount and the total amount

Examples
* A bill of $200 and tip percentage of 15% yields a $30 tip with a total of $230

Data Structure
* numbers

Algorithm
* Get bill from user and convert to float
* Get tip percentage and convert to float
* calculate and output tip and total

Code

=end

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip = bill * tip_percent / 100
total = bill + tip

puts "The tip is $#{format("%.2f", tip)}."
puts "The total is $#{format("%.2f", total)}."
