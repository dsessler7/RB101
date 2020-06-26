=begin

Problem
* input is a string with words separated by space(s)
* output is a hash with the keys being the number of letters in a given
word and the values being the number of words with that number of letters

Examples
* four score and seven. => { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
* What's up doc? => { 6 => 1, 2 => 1, 4 => 1 }

Data Structure
* strings
* hashes
* arrays?

Algorithm
* split string by spaces and store in array
* use each_with_object to iterate through array
  * get length of word and check to see if hash has_key? of that length
    * IF true, increment value
    * ELSE, initialize hash key/value

Code

=end

def word_sizes(string)
  string.split.each_with_object({}) do |word, hash|
    hash.has_key?(word.length) ? hash[word.length] += 1 : hash[word.length] = 1
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
