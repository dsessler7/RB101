=begin

Problem
* input is a string
* output is all palindromic substrings

Examples
* 

Data Structure
* strings
* arrays

Algorithm
* use #substrings to get all substrings
* iterate through array and grab substrings that are palindromes

Code

=end

def substrings_at_start(string)
  (0...string.length).map { |i| string[0, i + 1] }
end

def substrings(string)
  (0...string.length).map { |i| substrings_at_start(string[i..-1]) }.flatten
end

def palindromes(input_string)
  substrings(input_string).select { |sub| sub == sub.reverse && sub.size > 1 }
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
