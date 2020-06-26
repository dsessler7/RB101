=begin

Problem
* input is a non-empty string
* output is the middle character or characters of the argument

Examples
* 'I Love ruby' => 'e'
* 'Launchschool' => 'hs'
* 'a' => 'a'

Data Structure
* strings

Algorithm
* length/2 = middle char index
* if even, get next char as well

Code

=end

def center_of(input_string)
  middle = input_string.size / 2
  output_string = input_string[middle]
  output_string.prepend(input_string[middle - 1]) if input_string.size.even?
  output_string
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
