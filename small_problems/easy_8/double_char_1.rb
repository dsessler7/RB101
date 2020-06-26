=begin

Problem
* input is a string
* output is the same string with every character doubled

Examples
* 'Hello' => 'HHeelllloo'

Data Structure
* Strings

Algorithm
* 

Code

=end

def repeater(input_string)
  output_string = ''
  input_string.each_char { |char| output_string << char*2 }
  output_string
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
