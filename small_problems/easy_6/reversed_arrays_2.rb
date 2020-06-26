# same as last problem but this time the output should be a new array object

def reverse_array(input_array)
  new_array = input_array.clone
  left_index = 0
  right_index = -1

  until right_index.abs > new_array.size / 2
    new_array[left_index], new_array[right_index] = new_array[right_index], new_array[left_index]
    left_index += 1
    right_index -= 1
  end

  new_array
end

puts reverse_array([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse_array(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse_array(['abc']) == ['abc']              # => true
puts reverse_array([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse_array(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true


def reverse_array2(input_array)
  input_array.each_with_object([]) { |elem, output_array| output_array.unshift(elem) }
end

puts reverse_array2([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse_array2(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse_array2(['abc']) == ['abc']              # => true
puts reverse_array2([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse_array2(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
