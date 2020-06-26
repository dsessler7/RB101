=begin

Problem
* input is a string of at least two words
* output is the second to last word

Examples
* 'last word' => 'last'
* 'Launch School is great!' => 'is'

Data Structure
* strings
* arrays

Algorithm
* split string up into array of words and return word with index of -2

Code

=end

def penultimate(string)
  string.split[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

def middle_word(string)
  words = string.split
  words.size.even? ? index = words.size / 2 - 1 : index = words.size / 2
  words[index]
end

puts middle_word('output the middle word, please')
puts middle_word('The middle word, please')
puts middle_word('middle')
puts middle_word('')
