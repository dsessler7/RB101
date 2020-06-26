=begin

Problem
* input is a string
* output is the input string but with the letters' case changed
* cannot use String#swapcase

Examples
* 'CamelCase' => 'cAMELcASE'

Data Structure
* Strings
* Arrays?

Algorithm
* iterate through chars in string:
  * if range of 'A'..'Z' includes? letter
    letter.downcase
  * elsif range of 'a'..'z' includes? letter
    letter.upcase
  * else
    leave char be

Code

=end

def swapcase(string)
  string.size.times do |i|
    if ('A'..'Z').include?(string[i])
      string[i] = string[i].downcase
    elsif ('a'..'z').include?(string[i])
      string[i] = string[i].upcase
    end
  end
  string
end

puts swapcase('abc') == 'ABC'
puts swapcase('ABC') == 'abc'
puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
