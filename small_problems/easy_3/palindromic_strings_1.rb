=begin

Problem
* Input is a string
* Output is a boolean that is determined by whether input string is a palindrome or not

Examples
* madam => true
* Madam => false (program is case-sensitive)
* madam i'm adam => false (punctuation matters too)

Data Structure
* strings
* arrays?

Algorithm
* get input string from user
* reverse it and see if it is equal to input?

Code

=end

def palindrome?(str_or_arr)
  str_or_arr.reverse == str_or_arr
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([3, 2, 1, 2, 3]) == true
puts palindrome?(%w(M a d a m)) == false
puts palindrome?(%w(m a d a m)) == true