DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  string = ''
  number.digits.reverse.each { |num| string << DIGITS[num] }
  string
end

def signed_integer_to_string(signed_number)
  if signed_number > 0
    integer_to_string(signed_number).prepend('+')
  elsif signed_number < 0
    integer_to_string(-signed_number).prepend('-')
  else
    '0'
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'