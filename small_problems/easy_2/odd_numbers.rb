=begin

Problem
* input is inclusive range of 1 to 99
* output is all the odd numbers printed on separate lines

Examples
* self explanatory

Data Structure
* numbers
* arrays

Algorithm
* Use inclusive range to get base numbers
* use select method and #odd? to grab odd numbers
* use puts to print each number on its own line

Code

=end

puts (1..99).select { |num| num.odd? }
