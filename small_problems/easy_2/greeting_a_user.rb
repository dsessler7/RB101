=begin

Problem
* input is name
* output is greeting
* if name has exclamation point, output is all caps

Examples
* Bob => Hello Bob.
* Bob! => HELLO BOB. WHY ARE WE SCREAMING?

Data Structure
* strings
* arrays?

Algorithm
* get name from user
* check to see if last character is exclamation point (options):
  1. break string into individual characters and store in array and see if last element is '!'
  2. use built in String method #end_with? to see if string ends with '!' (more efficient)
* print response accordingly

Code

=end

print "What is your name? "
name = gets.chomp
puts name.end_with?('!') ? "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?" : "Hello #{name}."
