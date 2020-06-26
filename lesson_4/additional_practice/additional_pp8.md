# PP8

What happens when we modify an array while we are iterating over it? What would be output by this code?

```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
```

I'm honestly not quite sure, but my intuition tells me that the each method still iterates via an index system and that since the code removes the first item during the first iteration after it has been printed out by the `p` method (with index at 0), on the second iteration, (with the index at 1) the method passes what originally was the 3rd item in the array, but is now the 2nd item in the array to the block where it is removed.  So the program prints out 1 and 3 and we end up with numbers being [2, 4]...

What would be output by this code?

```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
```

With this code, it is popping elements off the end of the array after printing the current number.  So, on the first iteration the 4 is popped off and then on the second iteration the 3 is popped off but then we've reached the end of the array. So the program prints out 1 and 2 and the numbers array is now [1, 2]...

