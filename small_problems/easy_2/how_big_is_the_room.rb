=begin

Problem
* input is length  and width of room in meters
* output is area of room in square meters and square feet

Examples
* User enters 10 for length and 7 for width and gets 70 square meters and 753.47 square feet

Data Structure
* numbers

Algorithm
* collect input and convert to floats
* get product of input numbers and convert to sq ft
* output both results

Code

=end

SQFT_TO_SQIN = 144
SQIN_TO_SQCM = 6.4516

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

puts "The area of the room is: \n  #{(length * width).round(2)} square feet"
puts "  #{(length * width * SQFT_TO_SQIN).round(2)} square inches" 
puts "  #{(length * width * SQFT_TO_SQIN * SQIN_TO_SQCM).round(2)} sqaure centimeters"
