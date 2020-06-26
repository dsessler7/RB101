=begin

Problem
* input is an array
* output is the same array object with its elements in reverse order
* cannot use #reverse or #reverse!

Examples
* 

Data Structure
* arrays

Algorithm
* create empty temp_array
* UNTIL input_array.empty?
  * SHIFT value off input array and push to temp_array
* UNTIL temp_array.empty?
  * POP value off temp_array and push to input_array
Code

=end

def reverse_array!(input_array)
  temp_array = []
  until input_array.empty?
    temp_array << input_array.shift
  end
  until temp_array.empty?
    input_array << temp_array.pop    
  end
  input_array
end

list = [1,2,3,4]
result = reverse_array!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
result = reverse_array!(list)
#puts reverse_array!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]
puts list.object_id == result.object_id

list = ['abc']
result = reverse_array!(list)
#puts reverse_array!(list) == ["abc"]
puts list == ["abc"]
puts list.object_id == result.object_id

list = []
result = reverse_array!(list)
#puts reverse_array!(list) == []
puts list == []
puts list.object_id == result.object_id
