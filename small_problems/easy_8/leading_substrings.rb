=begin

Problem
* input is a string
* output is an array of all substrings of the input string that start with the first letter

Examples
* 'abc' => ['a', 'ab', 'abc']

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

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
