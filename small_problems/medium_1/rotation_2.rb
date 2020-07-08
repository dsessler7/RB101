def rotate_array(input_array)
  output_array = Array.new(input_array.size)
  input_array.each_with_index { |elem, i| output_array[i - 1] = elem }
  output_array
end

def rotate_string(input_string)
  rotate_array(input_string.chars).join
end

def rotate_integer(input_int)
  rotate_array(input_int.digits.reverse).join.to_i
end

def rotate_rightmost_digits(number, n)
  number_array = number.digits.reverse
  number_array[-n..-1] = rotate_array(number_array[-n..-1])
  number_array.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
