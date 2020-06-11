=begin

Problem
* input is words or multiple words
* output is the number of characters not including spaces

Examples
* walk => There are 4 chars in "walk"
* walk, don't run => There are 13 chars in "walk, don't run"

Data Structure
* strings

Algorithm
* get string from user
* split into words, then concat back together and count chars in result

Code

=end

print "Please write word or multiple words: "
words = gets.chomp
total_chars = words.split.join.length
puts %Q(There are #{total_chars} characters in "#{words}".)
