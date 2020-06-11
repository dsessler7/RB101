=begin

Problem
* input is a year (integer)
* output is boolean that corresponds to whether the year is a leap year or not

Examples
* 20016 => true
* 2015 => false

Data Structure
* numbers

Algorithm
* output = (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0) ????

Code

=end

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true