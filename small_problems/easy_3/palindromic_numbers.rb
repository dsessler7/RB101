def palindromic_number?(number)
  number.to_s.reverse == number.to_s
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

# I figured out that when you have leading zeros, Ruby treats the number as an 
# octal number, but I could not figure out how to get around this.  I thought
# maybe sprintf would have a flag to tell it to conver the number exactly as
# it is, basically treating the number as decimal rather than octal, and keep
# the leading zeros, but there doesn't seem to be a way to do this.