=begin

Problem
* input is string of words separated by spaces
* output is the input string but with first and last letters of each word swapped

Examples
* Abcde => ebcdA
* a => a
* Oh yeah => hO heay

Data Structure
* strings
* arrays

Algorithm
* split input string up into array of words
* iterate through array, mapping words with letters swapped to new array
* join words in new array together with spaces in between words

Code

=end

def swap(string)
  words = string.split
  words.map! do |word|
    temp = word[0]
    word[0] = word[-1]
    word[-1] = temp
    word
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'