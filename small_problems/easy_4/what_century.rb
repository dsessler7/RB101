=begin

Problem
* input is a yeah (integer)
* output is a string saying the century that year is from

Examples
* 2000 => '20th'
* 2001 => '21st'
* 1965 => '20th'
* 256 => '3rd

Data Structure
* strings
* hash?
* numbers

Algorithm
* century number = ((year - 1) / 100 ) + 1
* consult hash for suffixes

Code

=end

def century(year)
  suffixes = {
    0 => 'th',
    1 => 'st',
    2 => 'nd',
    3 => 'rd'
  }
  century = ((year - 1)/ 100) + 1

  if (century % 100 > 10) && (century % 100 < 14)
    century.to_s + 'th'
  else
    ordinal = century % 10 > 3 ? 0 : century % 10
    century.to_s + suffixes[ordinal]
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
