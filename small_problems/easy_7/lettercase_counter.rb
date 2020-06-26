=begin

Problem
* input is a string
* output is a hash containing the count for lowercase letters, uppercase letters, and chars that are neither

Examples
* 

Data Structure
* strings
* hash

Algorithm
* initialize hash with char types and values set at 0
* hash[lowercase} = string.count("a-z")
  etc

Code

=end

def letter_case_count(string)
  letter_counts = { lowercase: 0, uppercase: 0, neither: 0 }
  letter_counts[:lowercase] = string.count 'a-z'
  letter_counts[:uppercase] = string.count 'A-Z'
  letter_counts[:neither] = string.size - letter_counts[:lowercase] - letter_counts[:uppercase]
  letter_counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
