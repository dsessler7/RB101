=begin

Problem
* input is an integer
* output is the next featured number higher than the input value
  * a featured number is odd, a multiple of 7, and has unique digits

Examples
* 

Data Structure
* numbers

Algorithm
* if input is higher than 9,876,543,210

Code

number = 9876543210
loop do
  break if number % 7 == 0 && number.odd? && number.digits == number.digits.uniq
  number -= 1
end
p number

=end

def featured(number)
  return "-> There is no possible number that fulfills those requirements" if number > 9876543201
  increment = 1
  loop do
    number += increment
    return number if number % 7 == 0 && number.odd? && number.digits == number.digits.uniq
    increment = 14 if number % 7 == 0 && number.odd?
    increment = 7 if number % 7 == 0
  end
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999)