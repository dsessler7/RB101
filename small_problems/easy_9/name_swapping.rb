=begin

Problem
* input is a string of a first name a space and a last name
* output is a string of the last name comma space first name

Examples
* Drew Sessler => Sessler, Drew

Data Structure
* Strings

Algorithm
* split string and interpolate strings from array into output string

Code

=end

def swap_name(name)
  names = name.split
  "#{names[1]}, #{names[0]}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
