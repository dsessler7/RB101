=begin

Problem
* input is a string
* output is a hash containing three values:
  * percentage of lowercase letters
  * percentage of uppercase letters
  * percentage of non-alphabetic chars

Examples
* 

Data Structure
* strings
* hash

Algorithm
* get string length
* count a-z
* count A-Z
* subtract prior counts from string length to get other chars
* do the math for percentages

Code

=end

def letter_percentages(input_string)
  total_chars = input_string.length
  lowercase_count = input_string.count("a-z")
  uppercase_count = input_string.count("A-Z")
  nonalpha_count = total_chars - lowercase_count - uppercase_count
  { 
    lowercase: ((lowercase_count / total_chars.to_f) * 100).round(2),
    uppercase: ((uppercase_count / total_chars.to_f) * 100).round(2),
    neither: ((nonalpha_count / total_chars.to_f) * 100).round(2)
  }
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
puts letter_percentages('abcdefGHI') == { lowercase: 66.67, uppercase: 33.33, neither: 0.0}
