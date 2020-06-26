=begin

Problem
* input is a string
* output is an array that contains every word from the input string 
and each word is appended by a space and the length of the word

Examples
* word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

Data Structure
* strings
* arrays

Algorithm
* split string
* array.map!
  * word + " #{word.size}"

Code

=end

def word_lengths(input_string)
  words = input_string.split
  words.map { |word| word + " #{word.size}"}
end

puts word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

puts word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

puts word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

puts word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

puts word_lengths("") == []
