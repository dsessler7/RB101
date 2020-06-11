def string_to_integer(string_numbers)
  numbers = {
    '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
    '8' => 8, '9' => 9, '0' => 0
  }
  str_digits = string_numbers.chars.reverse
  num_digits = str_digits.map { |str| numbers[str] }
  sum = 0
  num_digits.each_with_index { |num, i| sum += num * 10**i }
  sum
end

def string_to_signed_integer(signed_num_str)
  if signed_num_str.start_with?('-')
    signed_num_str.delete! '-'
    string_to_integer(signed_num_str) * -1
  else
    signed_num_str.delete! '+'
    string_to_integer(signed_num_str)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
