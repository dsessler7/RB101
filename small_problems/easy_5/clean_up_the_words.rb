=begin

Problem
* input is a string
* output is the same string with all non-alphabetic chars replaced with spaces (one space per section of non-alphabetic chars)

Examples
* "---what's my +*& line?" => ' what s my line '

Data Structure
* strings
* arrays?

Algorithm
* use gsub to replace all non-alphabetic chars with space
* use squeeze to get rid of extra spaces

Code

=end

def cleanup(string)
  string.gsub(/[^a-z]/, ' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
puts cleanup("i'm  a s!lly g00$3   ") == 'i m a s lly g '

def cleanup2(string)
  new_string = ''
  string.each_char do |char|
    if ('a'..'z').to_a.include?(char)
      new_string << char
    else
      new_string << ' ' unless new_string[-1] == ' '
    end
  end
  new_string
end

puts cleanup2("---what's my +*& line?") == ' what s my line '
puts cleanup2("i'm  a s!lly g00$3   ") == 'i m a s lly g '
