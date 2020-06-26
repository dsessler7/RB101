=begin

Problem
* input is a string
* output is a string with all consecutive duplicate characters collapsed into a single character

Examples
* ddaaiillyy ddoouubbllee => daily double
* ggggggggg => g

Data Structure
* strings
* arrays?

Algorithm
* take input string and break up into input_array of chars
* initialize empty output_array
* iterate through input_array
  * NEXT if element is equal to output_array.last 
  * ELSE add element to output_array

Code

=end

def crunch(input_string)
  chars = input_string.chars
  crunched_chars = []
  chars.each { |char| char == crunched_chars.last ? next : crunched_chars << char }
  crunched_chars.join
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

def crunch2(input_string)     # Couldn't quite get this to work...
  output_string = input_string.gsub(/.{2,}/) { |match| match[0] }
  p output_string
  output_string
end

puts crunch2('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch2('4444abcabccba') == '4abcabcba'
puts crunch2('ggggggggggggggg') == 'g'
puts crunch2('a') == 'a'
puts crunch2('') == ''
