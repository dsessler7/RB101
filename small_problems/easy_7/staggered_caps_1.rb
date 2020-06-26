=begin

Problem
* input is a string
* output is the input string with every other character capitalized

Examples
* 'I Love Launch School!' == 'I LoVe lAuNcH ScHoOl!'

Data Structure
* Strings

Algorithm
* iterate through chars in strings
* if index is even, upcase letter
* else, downcase letter

Code

=end

def staggered_case(string)
  string.size.times do |i|
    if i.even?
      string[i] = string[i].upcase
    else
      string[i] = string[i].downcase
    end
  end
  string
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case_option(string, first_case=true)
  result = ''
  need_upper = first_case
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

puts staggered_case_option('I Love Launch School!', false)
puts staggered_case_option('ALL_CAPS', false)
puts staggered_case_option('ignore 77 the 444 numbers', false)
