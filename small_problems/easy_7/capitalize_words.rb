=begin

Problem
* input is a string
* ouutput is a new string, same as input, but with each word capitalized

Examples
* 

Data Structure
* strings
* arrays

Algorithm
* break string up into array of words
* capitalize each word
* rejoin words

Code

=end

def word_cap(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap2(string)
  word_array = string.split
  word_array.each do |word|
    word.downcase!
    word[0] = word[0].upcase
  end
  word_array.join(' ')
end

puts word_cap2('four score and seven') == 'Four Score And Seven'
puts word_cap2('the javaScript language') == 'The Javascript Language'
puts word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'
