=begin

Problem
* input is an array of strings
* output is a new array of the same strings in the input array but with vowels removed

Examples
* green YELLOW black white => grn YLLW blck wht
* ABC AEIOU XYZ => ['BC', '', 'XYZ']

Data Structure
* arrays
* strings

Algorithm
* iterate through array
  * use #delete to remove vowels

Code

=end

def remove_vowels(array)
  array.map { |word| word.delete('aeiouAEIOU') }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
