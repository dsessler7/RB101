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

def max_rotation(number)
  output_num = number
  counter = number.digits.size
  counter.times do
    output_num = rotate_rightmost_digits(output_num, counter)
    counter -= 1
  end
  output_num
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
