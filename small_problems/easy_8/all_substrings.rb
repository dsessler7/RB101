=begin

Problem
* input is a string
* output is an array of all substrings of input string with all substrings
starting at index 0 coming first, then index 1 and so on

Examples
* 

Data Structure
* strings
* arrays

Algorithm
* 

Code

=end

def substrings_at_start(string)
  (0...string.length).map { |i| string[0, i + 1] }
end

def substrings(string)
  (0...string.length).map { |i| substrings_at_start(string[i..-1]) }.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
