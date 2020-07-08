=begin

Problem
* input is a text file
* output is the longest sentence in the contents of the file (based on number of words) and the number of words in the sentence
  * sentences end with a period, exclamation point, or a question mark

Examples
* 

Data Structure
* strings

Algorithm
* LOAD file
  * SPLIT text into sentences and store in array
  * Iterate through array and check length
    * if length is longer than previously stored longest_sentence, store sentence in longest_sentence

Code

=end

text = IO.read("pg84.txt")
sentences = text.split(/[\.\?!]/)

longest_sentence = sentences.max { |a, b| a.split.length <=> b.split.length }
puts longest_sentence.strip
p longest_sentence.split.length
