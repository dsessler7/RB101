=begin

Problem
* Input is two strings
* Output is one big string with the shorter of the input strings concatenate to either side of the longer string

Examples
* 'abc', 'defgh' => 'abcdefghabc'
* 'abcde', 'fgh' => 'fghabcdefgh'
* '', 'xyz' => 'xyz'

Data Structure
* strings

Algorithm
* if string_a is longer than string_b output string_b + string_a + string_b
* else output string_a + string_b + string_a

Code

=end

def short_long_short(str_a, str_b)
  str_a.length > str_b.length ? str_b + str_a + str_b : str_a + str_b + str_a
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"