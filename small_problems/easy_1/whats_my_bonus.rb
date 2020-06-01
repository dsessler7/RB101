=begin

Problem
  * input is positive integer and a boolean
  * integer is salary, boolean represents whether the person gets a bonus or not
  * output is bonus which is half of input salary (if bool is true)
  * if bool is false, bonus is zero

Examples:
puts calculate_bonus(2800, true) == 1400      #=> true
puts calculate_bonus(1000, false) == 0        #=> true
puts calculate_bonus(50000, true) == 25000    #=> true

Data Structure
  * Numbers
  * Booleans

Algorithm(s):

Alg 1:
  * if bool is true, return half of input number
  * else, return 0

Code

=end

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
