=begin

Problem
* input is inclusive range of 1 to 99
* output is all the even numbers printed on separate lines

Examples
* self explanatory

Data Structure
* numbers
* arrays

Algorithm
* Use inclusive range to get base numbers
* use select method and #even? to grab even numbers
* use puts to print each number on its own line

Code

=end

puts (1..99).select { |num| num.even? }
