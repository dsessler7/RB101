=begin

Problem
* same as last one except the alternation skips non-alpha characters

Examples
* 

Data Structure
* 

Algorithm
* 

Code

=end

def staggered_case(string, first_case=true)
  result = ''
  need_upper = first_case
  string.chars.each do |char|
    if char =~ /[A-Za-z]/
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

def staggered_case2(string, count_non=true)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[A-Za-z]/ || count_non
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end
puts staggered_case2('I Love Launch School!', false)