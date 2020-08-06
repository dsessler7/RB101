# Lesson 5 Notes: Advanced Ruby Collections

## Introduction

This lesson will explore more advanced aspects of working with collections such as sorting, nested collections, and working with blocks.

## Sorting

Sorting is setting the order of the items in a collection according to a certain criterion. It is mostly performed on arrays; since items in arrays are accessed via their index, the order in which those items appear is important.

While it is possible to write code to loop through a collection and manually sort its elements, this code would be fairly complex and is beyond the scope of this lesson.  Luckily, Ruby provides a couple built-in methods that can do this complex work for us: `sort` and `sort_by`

Our first most basic examples are thus:

```ruby
[2, 5, 3, 4, 1].sort # => [1, 2, 3, 4 ,5]
['c', 'a', 'e', 'b', 'd'].sort # => ['a', 'b', 'c', 'd', 'e']
```

As we can see the method takes the unordered list of numbers and outputs an array with the same numbers ordered in increasing value. It does the same with an unordered list of letters.

### Comparison

Sorting is essentially carried out by *comparing* the items in a collection with each other, and ordering them based on the results of that comparison.

As we saw earlier, the `#sort` method will order either numbers or letters, but when we call it, the method doesn't know whether the array contains numbers or strings or some other objects, so how does it know how to order the elements in the array? The answer is that it uses another method to determine this, the `<=>` method (sometimes referred to as the 'spaceship' operator)

#### The `<=>` Method

This method performs comparison between two objects of the same type and returns a -1, 0, or 1, depending on whether the first object is less than, equal to, or greater than the second object.  If the two objects cannot be compared then a `nil` is returned.

```ruby
2 <=> 1 # => 1
1 <=> 2 # => -1
2 <=> 2 # => 0
'b' <=> 'a' # => 1
'a' <=> 'b' # => -1
'b' <=> 'b' # => 0
1 <=> 'a' # => nil
```

The `sort` method uses the `<=>` method to compare its elements and sort them out.  If the `sort` method is called and the `<=>` method returns a `nil`, the `sort` method throws an error:

```ruby
['a', 1].sort # => ArgumentError: comparison of String with 1 failed
```

For this reason, it is important to understand how the `<=>` method treats different objects. To learn about this, check the documentation.

##### The ASCII Table

For numbers, comparisons like greater than or equal to make perfect sense, but for strings it's not quite as obvious.  In this case, the strings' values are derived from the ASCII table.  For example, comparing an uppercase 'A' with a lowercase 'a' returns -1 because 'A' precedes 'a' in ASCIIbetical order:

```ruby
'A' <=> 'a' # => -1
```

You can determine a string's ASCII position by calling `#ord` on the string:

```ruby
'b'.ord # => 98
'}'.ord # => 125
```

Some things to remember:

* Uppercase letters come before lowercase letters
* Digits and (most) punctuation come before letters
* There is an extended ASCII table containing accented and other characters - this comes after the main ASCII table

### The `sort` Method

As we saw earlier, we can call `sort` on an array of numbers or strings and it will order them in increasing value order.

We can also call `sort` with a block, which gives us more control over how the items are sorted.  The block takes two arguments, the two items being compared, and must return -1, 0, 1 or nil.

```ruby
[2, 5, 3, 4, 1].sort do |a, b|
  a <=> b
end
# => [1, 2, 3, 4, 5]
```

The above example does the same sort as it would without the block.

```ruby
[2, 5, 3, 4, 1].sort do |a, b|
  b <=> a
end
# => [5, 4, 3, 2, 1]
```

In this example, by reversing the order in which the items are compared, the array's items get sorted in descending order.

For strings with multiple characters, the `<=>` method will compare the string character by character (so 'bad' comes before 'bat').  Also, in cases such as 'cap' <=> 'cape', 'cape' is longer and therefore considered greater by <=>.

For arrays (comparing two arrays), `<=>` first compares the first element of the arrays, and then the second element and so on.

```ruby
[['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
# => [["a", "car", "d"], ["a", "car", "d", 3], ["a", "cat", "b", "c"], ["b", 2]]
```

### The `sort_by` method

The `#sort_by` method is usually called with a block.  The code in the block determines how the items are sorted.  For example:

```ruby
['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end
# => ["mat", "bed", "cot"]
```

This example sorts the words according to the letters at index 1 of each of them and ignores the rest of the letters.  The documentation for `sort_by` does state that if values are equal that the result is not consistent.  For example, if in the above example 'bed' was 'bad' instead, it would compare the 'a's in 'bad' and 'mat' and you could not safely rely on the post-sort order going one way or another.  Sometimes 'bad' might be first and sometimes it might be 'mat' first.

While we generally don't need/want to sort hashes, using `sort_by` would be one way to do it. The arguments passed into the block are the key and value.  For example:

```ruby
people = { Kate: 27, john: 25, Mike:  18 }
people.sort_by do |_, age|
  age
end
# => [[:Mike, 18], [:john, 25], [:Kate, 27]]
```

Notice in this example that `sort_by` always returns an array, even when called on a hash.  Luckily, it returns a nested array that is very easy to convert to a hash using the `Array#to_h` method.

We could also sort the hash by the names (keys in the example), but notice that the keys are symbols.  When looking at `Symbol#<=>` documentation we see that the symbols are converted to Strings using the `#to_s` method and then compared.  So we are effectively comparing strings.  In this example though, 'john' is not capitalized, so it will come after Kate and Mike, which may not be what we want.  So, to avoid that issue, we can call `Symbol#capitalize` on them first before comparing them:

```ruby
people.sort_by do |name, _|
  name.capitalize
end
# => [[:john, 25], [:Kate, 27], [:Mike, 18]]
```

Note: For Arrays, there is also the destructive `sort!` and `sort_by!` methods.  These do not exist for hashes.

### Other methods which use comparison

* min
* max
* minmax
* min_by
* max_by
* minmax_by

These are found in the Enumerable module.

### Summary

* Sorting is complex to carry out algorithmically on your own, so we can use #sort and #sort_by for now
* Comparison is at the heart of sorting. When sorting, you need to know if the objects you want to sort can implement the `<=>` operator and how it works for that particular kind of object
* There are methods other than `sort` and `sort_by` that use comparison

## Nested Data Structures

### Referencing collection elements

```ruby
arr = [[1, 3], [2]]
```

In this example we have one array that contains two separate arrays: `[1, 3]` and `[2]`. So, to access the first array, we would do the following:

```ruby
arr[0] # => [1, 3]
```

To access an element inside the array we just accessed we would do this:

```ruby
arr[0][1] # => 3
```

### Updating collection elements

To update an element we use `[]=` just like we normally would:

```ruby
arr = [[1, 3], [2]]
arr[1] = "hi there"
arr                     # => [[1, 3], "hi there"]
```

We can similarly modify a value in a nested array:

```ruby
arr = [[1, 3], [2]]
arr[0][1] = 5
arr                     # => [[1, 5], [2]]
```

To be clear, this is actually element reference (arr[0]), which returns the first array ([1, 3]), chained with element update ([1] = 5) which changes the second element of the [1, 3] array to 5.

We can also add, or append, to a nested array:

```ruby
arr = [[1], [2]]

arr[0] << 3
arr # => [[1, 3], [2]]
```

### Other nested structures

Hashes can be nested in arrays:

```ruby
[{ a: 'ant' }, { b: 'bear' }]
```

If we wanted to add a new key/value pair to the first inner hash we would do the following:

```ruby
arr = [{ a: 'ant' }, { b: 'bear' }]

arr[0][:c] = 'cat'
arr # => [{ :a => "ant", :c => "cat" }, { :b => "bear" }]
```

Arrays can hold any type of Ruby object including nested data structures:

```ruby
arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']

arr[0]              # => ["a", ["b"]]
arr[0][1][0]        # => "b"
arr[1]              # => { :b => "bear", :c => "cat" }
arr[1][:b]          # => "bear"
arr[1][:b][0]       # => "b"
arr[2][2]           # => "b"
```

### Variable reference for nested collections

We can also use variables to point to Array objects, but we need to be careful when doing this because editing the variable once it's used as an Array element will also edit the Array:

```ruby
a = [1, 3]
b = [2]
arr = [a, b]
arr # => [[1, 3], [2]]

a[1] = 5
arr # => [[1, 5], [2]]
```

Likewise, if we edit the array directly, the variable will also be changed:

```ruby
arr[0][1] = 8
arr # => [[1, 8], [2]]
a   # => [1, 8]
```

### Shallow Copy

Sometimes you might need to copy an entire collection, usually so that you save the original before performing major modifications.  Ruby provides two methods to copy an object, including collections: `dup` and `clone`. Both methods create a *shallow copy* of the object. This means that only the object that the method is called on is copied.  If the object contains other objects - like a nested array - then those objects will be *shared*, not copied.

`dup`:

```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2[1].upcase!

arr2 # => ["a", "B", "c"]
arr1 # => ["a", "B", "c"]
```

Same behavior with `clone`:

```ruby
arr1 = ["abc", "def"]
arr2 = arr1.clone
arr2[0].reverse!

arr2 # => ["cba", "def"]
arr1 # => ["cba", "def"]
```

This is happening because the methods that were called mutate the caller and were called on the objects inside the array rather than the array itself.  However, if a destructive method were to be called on the array rather than its objects...

```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

arr1 # => ["a", "b", "c"]
arr2 # => ["A", "B", "C"]
```

It does not affect the original array.  Whereas, like before, when the destructive method is called on the internal objects:

```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.each do |char|
  char.upcase!
end

arr1 # => ["A", "B", "C"]
arr2 # => ["A", "B", "C"]
```

It does affect both arrays... So the lesson is be aware of what level you are working at, especially when working with nested collections and using variables as pointers.

### Freezing Objects

The difference between `dup` and `clone` is that `clone` preserves the frozen state of the object:

```ruby
arr1 = ["a", "b", "c"].freeze
arr2 = arr1.clone
arr2 << "d"
# => RuntimeError: can't modify frozen Array
```

`dup` doesn't preserve the frozen state of the object:

```ruby
arr1 = ["a", "b", "c"].freeze
arr2 = arr1.dup
arr2 << "d"

arr2 # => ["a", "b", "c", "d"]
arr1 # => ["a", "b", "c"]
```

In Ruby, objects can be frozen so that they cannot be modified. Only mutable objects can be frozen since immutable objects, like integers, are already frozen. We can check if an object is frozeon with the `frozen?` method:

```ruby
5.frozen? # => true
```

It is important to understand, however, that the freeze method only freezes the object that it is called on, not objects inside the object if it is a collection:

```ruby
arr = [[1], [2], [3]].freeze
arr[2] << 4
arr # => [[1], [2], [3, 4]]
```

### Deep Copy

In Ruby, there's no built-in or easy way to create a deep copy or perform a deep freeze on an object.  It can be done, but it's outside the scope of this lesson.

## Working with Blocks

When analyzing code we want to ask the following questions:

* What is the type of action being performed (method call, block, conditional, etc..)?
* What is the object that action is being performed on?
* What is the side-effect of that action (e.g. output or destructive action)?
* What is the return value of that action?
* Is the return value used by whatever instigated the action?

Note: *Do not mutate the collection that you're iterating through*

Since iteration is the basis of selection and transformation, mutating the collection while iterating will yield unexpected and sometimes compounding and undesired results. For example:

```ruby
# The method remove_evens! should delete all even numbers from the array passed in as the argument.

def remove_evens!(arr)
  arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
end

p remove_evens!([1,1,2,3,4,6,8,9])
# expected return value [1, 1, 3, 9]
# actual return value [1, 1, 3, 6, 9]
```

### Summary

* When analyzing code, break it down step by step
* Pay close attention to what is happening at each step, particularly the return value and any side effects
* Pay attention to all return values in your code, especially where implicit returns are being relied upon
* When using methods, make sure to understand what values are passed to the block and what the method does with the return value from the block
