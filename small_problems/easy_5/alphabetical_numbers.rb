=begin

Problem
* input is an array of integers btwn 0 and 19
* output is an array of the same integers but sorted alphabetically according to the english words for each number

Examples
* 0..19 => [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

Data Structure
* arrays
* numbers
* strings

Algorithm
* 

Code

=end

NUMBERS_ALPHA_ORDER = [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

def alphabetic_number_sort(array)
  sorted_array = []
  NUMBERS_ALPHA_ORDER.each do |num|
    array.count(num).times { sorted_array << num }
  end
  sorted_array
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
puts alphabetic_number_sort([1, 2, 3, 3, 2, 1]) == [1, 1, 3, 3, 2, 2]


NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort2(numbers)
  numbers.sort { |a, b| NUMBER_WORDS[a] <=> NUMBER_WORDS[b] }
end

puts alphabetic_number_sort2((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
puts alphabetic_number_sort2([1, 2, 3, 3, 2, 1]) == [1, 1, 3, 3, 2, 2]
