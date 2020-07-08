=begin

Problem
* an array containing at least two elements
* output is the array sorted via bubble sort

Examples
* 

Data Structure
* Arrays
* Numbers
* Strings

Algorithm
* initialize break flag
* START loop 
  array.each_with_index
    compare current with next indexed item, if out of order, swap them
    if swap was done, set flag
  break out of loop if flag was not set
  
Code

=end

def bubble_sort!(arr)
  no_swaps = true
  loop do
    (arr.size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        no_swaps = false
      end
    end
    break if no_swaps
    no_swaps = true
  end
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

def bubble_sort2!(arr)
  no_swaps = true
  n = arr.size
  loop do
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        no_swaps = false
      end
    end
    break if no_swaps
    no_swaps = true
    n -= 1
  end
end

array = [5, 3]
bubble_sort2!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort2!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort2!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
