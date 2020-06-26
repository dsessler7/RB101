# Lesson 4 Notes:

## Collections Basics

### Element Reference

#### String Element Reference

* Strings use an integer-based index that represents each character in the string; the index starts with 0
* Single characters can be referenced like so:

```ruby
str = 'abcdefghi'
str[2] # => "c"
```

* You can also reference multiple characters by using an index starting point and the number of characters to return:

```ruby
str[2, 3] # => "cde"
```
* *Note*: the above example using the `str[2, 3]` format is actually a call to `#slice` and is alternative syntax for `str.slice(2, 3)`

* We can chain these element referencing methods like so:

```ruby
str[2, 3][0] # => "c"
```

#### Array Element Referencing

* Arrays are also ordered, zero-indexed collections
* arrays are lists of elements where each element can be any object
* A specific element can be referenced using its index like so:

```ruby
arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']

arr[2] # => "c"
```

* Just like with strings, `array[index, length]` is alternative syntax for the `Array#slice` method.
* One difference, is that with the `Array#slice` method, if you only pass the method an index (no length or range), it will simply return the element at that index rather than returning a new array

```ruby
arr = [1, 'two', :three, '4']
arr.slice(3, 1) # => ["4"]
arr.slice(3..3) # => ["4"]
arr.slice(3)    # => "4"
```

#### Hash Element Reference

* Uses key-value pairs where the key or value can be any type of Ruby object, but the keys must be unique
* values can be duplicated
* We can access just the keys or just the values from a has using the `#keys` and `#values` methods, respectively.  Both of these methods return an array

```ruby
country_capitals = { uk: 'London', france: 'Paris', germany: 'Berlin' }
country_capitals.keys      # => [:uk, :france, :germany]
country_capitals.values    # => ["London", "Paris", "Berlin"]
country_capitals.values[0] # => "London"
```

* While you can use any object as the key, it is common practice to use symbols, which can be thought of as immutable strings

#### Element Reference Gotchas

##### Out of bounds indices

* If we reference an out of bounds element in a string or an array, it returns `nil`
* This is less of a problem with strings since that tells us that we out of bounds, but for arrays, `nil` could be an actual value in the array itself, so how would we know if we are accessing an element or are out of bounds?

```ruby
arr = [3, 'd', nil]
arr[2] # => nil
arr[3] # => nil
```

* We can use `Array#fetch` which will try to return the element at the specified index, but if it is out of bounds, it will throw an IndexError exception

```ruby
arr.fetch(2) # => nil
arr.fetch(3) # => IndexError: index 3 outside of array bounds: -3...3
             #        from (irb):3:in `fetch'
             #        from (irb):3
             #        from /usr/bin/irb:11:in `<main>'
```

* `#fetch` is safer, but `#[]` is more commonly used... the key is if you are going to use `#[]`, be careful when it returns `nil`.  If you really want to be safe, use `#fetch`

##### Negative Indices

* For both Strings and Arrays, negative indices work from the end of the collection and work back, with the last element in the collection have the index of -1
* negative indices can also go out of bounds and also return `nil` when that happens

##### Invalid Hash Keys

* `Hash` also has a `#fetch` method which can be useful when trying to disambiguate valid hash keys with a `nil` value from invalid hash keys:

```ruby
hsh = { :a => 1, 'b' => 'two', :c => nil }

hsh['b']       # => "two"
hsh[:c]        # => nil
hsh['c']       # => nil
hsh[:d]        # => nil

hsh.fetch(:c)  # => nil
hsh.fetch('c') # => KeyError: key not found: "c"
               #        from (irb):2:in `fetch'
               #        from (irb):2
               #        from /usr/bin/irb:11:in `<main>'
hsh.fetch(:d)  # => KeyError: key not found: :d
               #        from (irb):3:in `fetch'
               #        from (irb):3
               #        from /usr/bin/irb:11:in `<main>'
```

### Conversion

* `String#chars` returns an array of individual characters:

```ruby
str = 'Practice'

arr = str.chars # => ["P", "r", "a", "c", "t", "i", "c", "e"]
```

* `Array#join` returns a string with the elements of the array joined together:

```ruby
arr.join # => "Practice"
```

* You can pass in a string to `#join` to act as the buffer to in between each substring as they are concatenated together:

```ruby
arr.join(' ') # => "P r a c t i c e"
```

* Hash has a `#to_a` method which will convert it to an array (with each key-value pair becoming an array inside the larger array):

```ruby
hsh = { sky: "blue", grass: "green" }
hsh.to_a # => [[:sky, "blue"], [:grass, "green"]]
```

* `Array` also has a `#to_h` method which will convert an array to a hash

### Element Assignment

#### String Element Assignment

* We can change a single element of a string by using element assignment:

```ruby
str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"
```

#### Array Element Assignment

* Similarly we can assign elements in arrays:

```ruby
arr = [1, 2, 3, 4, 5]
arr[0] += 1 # => 2
arr         # => [2, 2, 3, 4, 5]
```

#### Hash Element Assignment

* Hash element assignment is very similary, we just use the key instead of an index:

```ruby
hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }
```

## Looping

* When you have to perform an action on each element in a collection, is is much more efficient to do so using a loop rather than writing out individual lines of code for each element

#### Controlling a loop

* a simple loop can be created using teh `Kernel#loop` method and passing a block to it:

```ruby
loop do
  puts 'Hello!'
end               # This is an infinite loop
```

* The keyword `break` is a statement that will allow us to leave a loop
* If we want to loop to iterate a certain number of times we can have the `break` keyword accessed by a conditional statement, so that we only leave when a certain condition has been met (usually because we've iterated a certain number of times and a counter variable has reached a certain value)

#### Iteration

* a one line if statement/expression is called an if modifier.  The following is an example:

```ruby
break if number == 5
```

* break placement at the end of a loop mimics a do/while loop where the loop iterates at least once
* break placement at the beginning of a loop mimics a while loop and the loop may never actually iterate
* the `next` keyword tells the loop to skip the rest of the current iteration and begin the next one
* to iterate through a hash using a loop you can create an array containing the keys of the hash using the #keys method and then iterate through that array, using the elements of the array to access the values in the hash:

```ruby
number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end
```

## Intro to PEDAC Process

**P** - [Understand the] **P**roblem

**E** - **E**xamples / Test Cases

**D** - **D**ata Structure

**A** - **A**lgorithm

**C** - **C**ode

This section of notes mainly covers the **P**, **D**, and **A** since in the first interview assessment, we are provided examples/test cases.

### Understanding the **P**roblem

Steps:

1. Read the problem description
2. Chech the test cases, if any
3. If any part of the problem is unclear, ask the interviewer to clarify the matter

Example problem:

```ruby
# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"
```

Some items that might need clarification:

1. What is a palindrome? 
2. Should the words in the string remain the same if they already use uppercase?  Here we can check the test cases and see that `LOVE` stayed uppercased so we can assume that is what is expected
3. How should we deal with empty strings as input?  Again, the test cases provide an answer in this case
4. Can I assume all inputs are strings?  Test cases don't show any non-string inputs so we should ask.  (In this case we are not going to worry about non-string values)
5. Should I consider letter case when deciding if it is a palindrome (i.e. would 'Mom' be considered a palindrome)?  Test cases don't specify in this case, so we should ask.
6. Do I need to return the same string object or an entirely new string?  This question is one of the most important and oft overlooked questions you can ask.  MAKE SURE YOU ASK THIS SO YOU DON'T WASTE TIME SOLVING A PROBLEM THE WRONG WAY.
7. Always verify assumptions by looking at problem description and test cases or asking the interviewer

To conclude the **P** section you should write down the inputs and outputs for the problem and describe the rules that you must follow.  The rules should encapsulate all explicit and implicit requirements of the problem:

```ruby
# input: string
# output: string (not the same object)
# rules:
#      Explicit requirements:
#        - every palindrome in the string must be converted to
#          uppercase. (Reminder: a palindrome is a word that reads
#          the same forwards and backward).
#        - Palindromes are case sensitive ("Dad" is not a palindrome, but "dad" is.)

#      Implicit requirements:
#        - the returned string shouldn't be the same string object.
```

### **D**ata Structure / **A**lgorithm

Example problem:

```ruby
# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Some questions you might have?
# 1. What is a substring?
# 2. What is a palindrome?
# 3. Will inputs always be strings?
# 4. What does it mean to treat palindrome words case-sensitively?

# Understand the Problem:
# input: string
# output: an array of substrings
# rules:
#      Explicit requirements:
#        - return only substrings which are palindromes.
#        - palindrome words should be case sensitive, meaning "abBA"
#          is not a palindrome.

# Data Structure:
# Array

# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array
```

What do we make of the Algorithm description above?  Is it complete?  Determining if a word is a palindrome relatively easy.  So is looping through an array.  However, finding all the substrings for a given string can be challenging and our algorithm doesn't really tackle how we plan to do that.  So we should go back and clarify that part of the algorithm further:

```ruby
# - create an empty array called `result` that will contain all
#   the required substrings
# - initialize variable start_substring_idx and assign 0 to it.
# - initialize variable end_substring_idx and assign value of
#   start_substring_idx + 1 to it.
# - Enter loop which will break when start_substring_idx is equal
#     to str.size
#   - Within that loop enter another loop that will break if
#     end_substring_idx is equal to str.size
#     - append to the result array part of the string from
#       start_substring_idx to end_substring_idx
#     - increment `end_substring_idx` by 1.
#   - end the inner loop
#   - increment `start_substring_idx` by 1.
#   - reassign `end_substring_idx` to `start_substring_idx += 1`
# - end outer loop
# - return `result` array
```

### Testing Frequently

Testing isn't really part of the PEDAC process but it's an important step to problem solving that you don't want to omit.  Test your code early and often while writing it. Write enough code to get some sort of result and test it to make sure you are getting the results you want.  Then add more code and retest, etc.  This way you find bugs as they are introduced and it is easier to know where they are.  The earlier you find bugs, the easier they are to identify and fix.

## Selection and Transformation

Basics of looping: a loop, a counter, a way to retrieve the current value, a way to ext the loop.  In addition, selection and transformation require some *criteria*.  Selection uses the criteria to determine which elements are selected.  Transformation uses the criteria to determine how to perform the transformation.

#### Looping to Select and Transform

In the below example we want to select all 'g' characters from an input string using a basic loop and counter:

```ruby
alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_chars << current_char    # appends current_char into the selected_chars string
  end

  counter += 1
  break if counter == alphabet.size
end

selected_chars # => "g"
```

In the below example we want to transform the strings in an array by adding 's' to the end of each string and again we will simply be using a loop and a counter:

```ruby
fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

loop do
  current_element = fruits[counter]

  transformed_elements << current_element + 's'   # appends transformed string into array

  counter += 1
  break if counter == fruits.size
end

transformed_elements # => ["apples", "bananas", "pears"]
```

Note: When transforming, make sure to be aware of whether you are mutating the original collection or if a new collection was returned.

`String#include?` is a useful method for selection.  For example, `'aeiouAEIOU'.include?(char)` would be a good way to select a character if it is a vowel (not counting 'y's obviously).

You can think of `loop` or `for` as interchangeable syntax, but we are going to use `loop` for consistency.  

It is common to chain actions on collections, but pay special mind to the return value, especially if the return value could be an empty collection or nil.  Trying to chain methods on empty collections or nil is dangerous and results in a lot of broken programs.

## Methods

Using `loop` and `for` to iterate over collections can become very repetitive and can be overly verbose in code.  Ruby provides many built-in methods that make iterating over collections much easier and more succinct.  In this section we will focus on `#each`, `#select`, and `#map`.

#### #each

Here is a basic example of iterating over a collection using a `loop` and counter:

```ruby
numbers = [1, 2, 3]
counter = 0

loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end
```

Here is the same exact example but using the `each` method instead of a `loop`:

```ruby
[1, 2, 3].each do |num|
  puts num
end
```

In this example `#each` is the method that is being called on the array.  The method takes a block (the do/end part).  The code within the block is executed for each iteration.  The block knows what `|num|` is because the `each` method sends the value of the current element to the block in the form of an argument that is `num`.  This past example was obviously an array where each element only has one value, but if we called `each` on a hash, there are two values so there must be two arguments in the block;

```ruby
hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end
```

One of the main differences between using a `loop` and using `#each` is the return value.  Once `each` is done iterating it returns the original collection.

#### #select

To perform selection, the `select` method evaluates the *return value of the block*. The block returns a value on each iteration and similar to a real method, the return value of the block is the return value of the last expression within the block.  All that `select` is concerned with is the *truthiness* of the return value.  If the return value is "truthy" it will select the element for that iteration and put it in the selection that the method eventually returns.

#### #map

This method performs transformation.  The return value of the block is placed in a new collection.

#### Enumerable

`Array` and `Hash` both have an `each` method which is specific to them and defines how the items in those collections are iterated over.

The `select` and `map` (and other) methods are actually defined in the **Enumerable** module and are made available to the `Array` and `Hash` classes.  When `map` is called on a hash, the arguments passed into the block are the key and value and the return value of the method is an array.

## More Methods

#### Enumerable#any?

If the block returns a "truthy" value for any of the elements in the collection, the method itself will return true.  It is sort of like a master || operator method but the values come from the block and how the individual elements get evaluated in the block.

#### Enumerable#all?

Similar to `any?` except that the method only returns true if the block returns true for all of the elements in the collection.  Just like how `any?` is reminiscent of an || method, `all?` is reminiscent of an && method.

#### Enumerable#each_with_index

This method is nearly identical to `#each` except that it takes a second argument which represents the index of each element.  When calling it on an array, the element is the first argument and the index is the second, like so:

```ruby
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end

# The index of 1 is 0.
# The index of 2 is 1.
# The index of 3 is 2.
# => [1, 2, 3]
```

When calling it on a hash, the first argument now represents an array containing both the key and the value and the second argument is still the index, like so:

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end

# The index of [:a, "ant"] is 0.
# The index of [:b, "bear"] is 1.
# The index of [:c, "cat"] is 2.
# => { :a => "ant", :b => "bear", :c => "cat" }
```

#### Enumerable#each_with_object

This method takes a method argument which acts as a collection object that will be returned by the method.  The block takes two arguments: first one is the element from the collection you are calling the method on and the second argument is the argument that was passed into the method. Once it's done iterating, it returns the collection object.  Example:

```ruby
[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end
# => [1, 3]
```

Just like with `each_with_index`, when calling it on a hash, the first block argument is an array that holds the key/value pair as each element is passed in:

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end
# => ["ant", "bear", "cat"]
```

OR you can use parentheses and format it like below so you have the key and value as variables:

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
# => { "ant" => :a, "bear" => :b, "cat" => :c }
```

#### Enumerable#first

This method returns the first element in a collection.  It can also take an optional argument which represents the number of elements to return:

```ruby
[1, 2, 3].first       # => 1
[1, 2, 3].first(2)    # => [1, 2]
```

When you call `#first` on a hash, it returns the element(s) as an array (or an array of arrays, if returning multiple elements):

```ruby
{ a: "ant", b: "bear", c: "cat" }.first(2)
# => [[:a, "ant"], [:b, "bear"]]
```

Hashes are typically thought of as unordered, but since Ruby 1.9, hashes do maintain order of their elements according to the order of insertion.  That being said, calling `first` on a hash doesn't quite make sense, but you can do it.  

#### Enumerable#include?

This method doesn't take a block but it does require one argument.  It returns true if the argument exists in the collection and false if it doesn't:

```ruby
[1, 2, 3].include?(1)
# => true
```

When called on a hash, `include?` only checks the keys, not the values:

```ruby
{ a: "ant", b: "bear", c: "cat" }.include?("ant")
# => false

{ a: "ant", b: "bear", c: "cat" }.include?(:a)
# => true
```

In fact, `Hash#include?` is essentially an alias for `Hash#key?` or `Hash#has_key?`.  In practice, Rubyists would usually prefer these mehtods over `include?` as they make the intention more explicit.  If we wanted to find out if a specific value exists within a hash, we could use `Hash#value?` or `Hash#has_value?`. 

#### Enumerable#partition

This method divides up elements in the current collection into two collections, depending on the block's return value:

```ruby
[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]
```

The more idiomatic way to use `partition` is to parallel assign variables to capture the divided inner arrays:

```ruby
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

odd  # => [1, 3]
even # => [2]
```

Even if called on a hash, the return value will always be an array.

Apparently when none of the conditions in an `if` statement evaluates as `true`, the `if` statement itself returns `nil`.
