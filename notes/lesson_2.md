# Lesson 2 Notes

## Kickoff Lecture

* Goals of Ruby Lessons:
  * build fluency in syntax
  * learn to think like a programmer and build applications
  * debugging mindset  

* Main topics:
  * learning to program precedurally
  * Object Oriented Programming
  * testing, blocks, tools, problem solving, language familiarity

* Learning to code: grammar and syntax
* Learning to program: building applications
  * Use pseudocode to map out programs

* Looking for help:
  * search using: stack trace, error messages
  * Stack Overflow is good resource  

* Asking for help:
  * treat TAs like co-workers
  * push everything to github
  * use forums and chatrooms
  * TA office hours

## Truthiness

### Logical Operators

* Short circuiting - the && and || operators exhibit a behaviour called short circuiting which means it will stop evaluating expressions once it can guarantee the return value  
*Example* - The && will short circuit when it encounters the first `false` expression:

```ruby
irb:001> false && 3/0
=> false
```

There is no `ZeroDivisionError` above because the && operator did not evaluate the 2nd expression; since the first expression is `false`, it can short circuit and return `false`.  With a || instead of a && the above example would return a `ZeroDivisionError`.  

Likewise, the || will short circuit when it encounters the first `true` expression.  
*Example*:  

```ruby
irb:001> true || 3/0
=> true
```

The above code doesn't generate a `ZeroDivisionError` because || didn't evaluate the second expression; it short circuited after encountering `true`.  
Relying on short circuiting can be dangerous but it can also sometimes be handy.

### Truthiness and Falseyness

* In Ruby, everything is considered to be truthy except for `false` and `nil`.  
*Example*:  

```ruby
num = 5

if num
  puts "valid number"
else
  puts "error!"
end

# => "valid number"
```

This is because Ruby considers all integers to be truthy (even 0); however that doesn't mean the `num` variable above is equal to true:

```ruby
num = 5
num == true        # => false
```

## Pseudo-Code

* Pseudo-code is a way to load a program into our brain first before actually coding
* There are two layers to solving any problem:
  1. The logical problem domain layer
  2. The syntactical programming language layer
* When you are not yet fluent in a programming language, doing both at the same time is difficult  

### Formal Pseudo-Code Keywords  

| keyword             | meaning                              |   |   |   |
|---------------------|--------------------------------------|---|---|---|
| START               | start of the program                 |   |   |   |
| SET                 | sets a variable we can use for later |   |   |   |
| GET                 | retrieve input from user             |   |   |   |
| PRINT               | displays output to user              |   |   |   |
| READ                | retrieve value from variable         |   |   |   |
| IF / ELSE IF / ELSE | show conditional branches in logic   |   |   |   |
| WHILE               | show looping logic                   |   |   |   |
| END                 | end of the program                   |   |   |   |

### Pseudo-code practice examples

1. a method that returns the sum of two integers  

```ruby
START

GET num1 from user
GET num2 from user

SET output = num1 + num2

PRINT output

END
```

2. a method that takes an array of strings, and returns a string that is all those strings concatenated together  

```ruby
START

# Given an array of strings called "strings"

SET output = strings.join

PRINT output

END
```

3. a method that takes an array of integers, and returns a new array with every other element

```ruby
START

# Given an array of integers called "integers"

SET output = []
for EACH integer in integers
  if index.even? PUSH integer into output

PRINT output

END
```

## Walkthough: Refactoring Calculator  

You can use a special syntax to store a multi line string into a variable like so:  

```ruby
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
```

And it will maintain its structure when printed to the screen.  

We do not need to include "Kernel" when writing methods such as "Kernel.gets()" or "Kernel.puts()" because when we write Ruby code that is not in a class, we are woring within an object called `main`, which is an instance of `Object`. The `Kernel` module is automatically loaded by `Object`, giving us access to all of its methods.  

## Debugging  

* Look at stack trace and find relevant error and study it
* Try to walk backwards through the code to understand how the flow of the program arrived at the error condition.  Think about the data being used and how missing or incorrect data could have caused the problem
* Use a search engine to look up the error message
* search directly on stack overflow
* look through documentation

### Steps to Debugging  

1. Reproduce the Error  
    * you need a deterministic way to consistently reproduce the problem, and only then can you start to isolate the root causes
2. Determine the Boundaries of the Error
    * tweak the data that caused the error
    * modifying the data or code where the error occurred helps us get an idea of the scope of the error and determine the boundaries of the problem
3. Trace the code
    * trapping the error - figuring out the exact section of code where the bug resides
4. Understand the Problem Well
    * Break down the code within the method or block or section where you've trapped the error
    * Try giving it different data and see how that affects the output  
5. Implement a Fix  
    * Ideally you fix the offending code, but in some cases, you'll be using a library or code that you can't modify and in those situations you'll have no choice but to deal with edge cases in your own code
    * fix one problem at a time!  
6. Test the fix  
    * use different data sets to test and ensure that you have indeed fixed the problem  

### Techniques for Debugging  

1. Line by line  
    * basically, be detail oriented when you code and don't gloss over anything  
2. Rubber Duck  
    * Literally explain the problem to a rubber duck or some other inanimate object
    * forces you to articulate the problem, detail by detail  
3. Walking away  
    * go for a walk, go exercise, take a shower etc
    * brain goes into diffuse mode and works on the problem in the background
    * Only works if you first spend time loading the problem into your brain!!
    * Also just gives you time to recover from coding fatigue
4. Using Pry  
    * need to have `require "pry"` at the top of your rb file  
    * insert `binding.pry` at the point of your code where you want debugger to stop  
    * when you run the file and it reaches the pry binding, it pauses the program and gives the user a prompt.  With the prompt we enter in expressions such as a variable to check its current value.  
    * do `Ctrl + D` to continue the program  
    * do `exit-program` to skip any remaining pry bindings and exit the program  
5. Using a Debugger  
    * stepping into functions and more systematically walk over the code
    * will get into more depth on this in the future  

## Order of Precedence  

* operators have different levelse of precedence, for example:  

```ruby
7 * 5 + 3       # => 38   equivalent to (7 * 5) + 3
3 + 5 * 7       # => 38   illustrates that result is not due to left to right order precedence
```  

* To make it prioritize the plus sign, we use parentheses:  

```ruby
7 * (5 + 3)     # => 56
```

* parentheses override the default evaluation order and evaluate the inner expression first  
* when in doubt, use parentheses  

### Diving Deeper  

* Order of precedence also affects how blocks are called by methods.  
* In fact, it turns out that blocks have the lowest precedence of all operators and even the way that blocks are FORMATTED affect their order of precedence.  A `{ }` block has a higher level of precedence than a `do...end` block.  To illustrate:  

```ruby
array = [1, 2, 3]

array.map { |num| num + 1 }     # => [2, 3, 4]

# And...

array.map do |num|
  num + 1
end                                 #   => [2, 3, 4]

# They return the same thing... BUT, when you pass them into another method, say p, to print it out...

p array.map { |num| num + 1 }      #  outputs [2, 3, 4]
                                   #  => [2, 3, 4]

p array.map do |num|
  num + 1
end                         #  outputs #<Enumerator: [1, 2, 3]:map>  
                            #  => #<Enumerator: [1, 2, 3]:map>
```

The above happens because `do...end` ,being the 'weakest' of all operators, gets executed last. So `array.map` without a block, gets evaluated first, and since it doesn't have a block (due to order of precedence), it returns an `Enumerator` which then gets passed in `p` as an argument, along with the `do...end` block.  Since `p` doesn't take blocks, the block is simply ignored:  

```ruby
p array.map                   # outputs <Enumerator: [1, 2, 3]:map>

p array.map do |num|
  num + 1
end                           # outputs <Enumerator: [1, 2, 3]:map>
```

#### Takeaways  

1. Ruby evaluates expressions based on the level of precedence of the operators involved  
2. To override the default, use parentheses  

### Ruby's `tap` method  

The `Object` instance method `tap` passes in the calling object to a block and then returns itself (same calling object).  According to the documentation, "the primary purpose of this method is to 'tap into' a method chain, in order to perform operations on intermediate results within the chain."  
*For example:*  

```ruby
(1..10)                 .tap { |x| p x }   # 1..10
 .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
 .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]
 ```

## Coding Tips  

### Dramatic Experience and Retaining Knowledge  

* Some things you only learn by putting a lot of time into struggling with them  
* Hours of debugging little things help you retain knowledge for the long haul  

### Naming Things  

* Don't bother skimping on characters when creating variables and methods  
* use descriptive names  
* Don't hardcode possible response values into the variable name (e.g. don't use something like "yes_or_no")  
* Try to capture the intent of the variable  

### Naming conventions  

* Use Ruby conventions (`snake_case` for variables and methods, `CamelCase` for classes, `UPPERCASE` for constants, etc.)  
* Use Rubocop to check your style  

### Mutating Constants  

`CONSTANTS` technically aren't immutable, so be careful to never accidentally change any of your constants' values.  

### Methods  

* Make sure that the methods you create do one thing and that its responsibility is very limited  
* Aim for your methods to be <= 10 lines or so (if it's more than 15 lines long, it should probably be split into multiple methods)  
* Don't have your method return a value AND have side effects (mutate the caller or print something out), it should do one or the other  
* The method name should imply whether it has side effects or not (for example, a '!' at the end) or if it returns a value (and what kind of value, for example 'total' implies it returns a number)  

#### Methods should be at the same level of abstraction  

* you should be able to copy and paste a method into irb and test it ( work with it in isolation)  
* you shouldn't care about the implementation when you use the method  

#### Method names should reflect mutation  

* The name should indicate whether it mutates or not, for example, one would assume that a method named `update_total` mutates a parameter 'total'  

#### Displaying output  

* Sometimes you have methods that only display things  
* When creating these methods, you should prefix the name with something like `print_` or `say_` or `display_` so that it is obvious that the method prints something out  
* when you do this, the methods should simply print somethind out, it should not mutate parameters or return values  

### Miscellaneous Tips  

* good code not only works properly but also is read easily - both by others as well as your future self  
* don't prematurely exit the program - your program should probably only have one exit point  
* indentation is 2 spaces  
* name your methods from the perspective of using them later  
* know when to use a 'do/while' vs a 'while' loop  

### Truthiness Tips  

* In Ruby, everything is truthy except for `nil` and `false`  
* avoid 'assignment within a conditional' code  

## Variable Scope  

### Types of Variables  

1. Constants - designated by block letters, should never change, available throughout application's scopes  
2. Global variables - designated by starting variable name with a dollar sign (e.g. `$var`), available throughout all scopes, used sparingly  
3. Class variables - designated by starting variable name with two `@` signs and are accessible by instances of your class as well as the class itself.  Must be initialized at the class level, outside of any method definitions.  They can be altered using class or instance method definitions.  
4. Instance variables - designated by starting variable name with one `@` sign, available throughout the current instance of the parent class. Can cross some scope boundaries, but not all.  
5. Local variables - no prefix, `snake_case` formatting, obey all scope boundaries  

(These notes only pertain to #5 Local variables)

* variable scope is defined by a block.  A block is a piece of code following a method invocation, usually delimited by either curly braces `{}` or `do/end` (NOTE: not all `do/end` pairs imply a block. You know if it's a block if it follows a method invocation.)
* Inner scope can access variables initialized in an outer scope, but not vice versa  
* two main areas where we encounter local variable scoping rules are related to *method definition* and *method invocation with a block*  

### Variables and Blocks  

* The block following the method invocation is actually an argument being passed into the method  
* Think of the scope created by a block as the inner scope; nested blocks will create nested scopes; a variable's scope is determined by where it is initialized  
* We have to be careful when we instantiate variables in an inner scope that we are not accidentally re-assigning an existing variable from an outer scope  

#### Variable shadowing  

If you have a variable set in the outer scope and then use the same variable name as a block parameter variable, like so:  

```ruby
n = 10

[1, 2, 3].each do |n|
  puts n
end
```

The variable in the block (`n` in this case) will ignore the fact that a variable with the same name already exists in the outer scope, i.e. the outer variable will not be seen, used, changed, etc. This is called variable shadowing.

You want to avoid variable shadowing as it's almost never what you intended to do and if it is, it can be confusing for other people reading your code.  Reminder to use long and descriptive variable names to avoid this issue.  

### Variables and Method Definitions  

* While a block has scope that "leaks" (i.e. lets outer scope variables in), a method's scope is entirely self-contained  
* The only variables a method definition has access to must be passed into the method definition (Reminder: we are only talking about local variables right now)

### Blocks within Method Definitions  

Unsurprisingly, rules of scope for a method invocation with a block remain in full effect even if we're working inside a method definition.  

### Constants  

* constants behave like globals  
* constants have *lexical scope* (which we will get into more detail when we get to OOP)

## More Variable Scope  

**Method definition** is when, within our code, we define a Ruby method using the def keyword  

**Method invocation** is when we call a method, whether that happens to be an existing method from the Ruby Core API or core Library, or a custom method that we've defined ourselves using the def keyword  

* Technically, any method can be called with a block, but the block is only executed if the method is defined in a particular way  
* A block is *part of* the method invocation
* *method invocation* followed by curly braces or `do/end` is the way in which we *define* a block in Ruby
* Essentially the block acts as an argument to the method
* The way an argument is used, whether its a parameter or a block, depends on how the method is defined
* `yield` is one keyword that is used in method definitions to tell the method how to interact with a block

## Pass by Reference vs Pass by Value

* The question stems from trying to determine what happens to objects when passed into methods
* In most programming languages there are two ways of dealing with objects passed into methods. The arguments are treated as :
  1. "references" to the original object
  2. "values", which are copies of the original

### What does pass by value mean?  

Basically it means the method has a copy of the original object and operations performed on the object within the method have no effect on the original object outside of the method.

### What does pass by reference mean?

It means when an object is passed into a method, it is a reference to the original object that is passed, and therefore the method can make changes to the original.  

### What Ruby does

Ruby exhibits a combination of bahaviors of the two above "passing" styles.  Some people call this *pass by reference of the value* or *call by sharing*.  Key nugget is this:  

***when an operation within the method mutates the caller, it will affect the original object***

### Variables as Pointers

* Variables are pointers to physical space in memory
* Some methods mutate the address space in memory, others simply change the variable to point to a different address space

Using the below as an example:

```ruby
>> greeting = 'Hello'
=> "Hello"
```

In Ruby, `greeting` is said to *reference* the String object (that has a value of 'Hello').  Another way to phrase it would be to talk of the variable as being *bound* to the String object, or binding the variable to the String object.

* The method #object_id can be useful for understanding objects and how variables reference them. For example:  

```ruby
irb(main):021:0> a = "hello"
irb(main):022:0> b = a
irb(main):023:0> a.object_id
=> 180
irb(main):024:0> b.object_id
=> 180
```

This shows that a and b are referencing the same exact object.  

### Mutability

In Ruby, numbers and boolean values are immutable (as are `nil` and Range objects).  Any class can establish itself as immutable by simply not providing any methods that alter its state.  

Most other objects, however, are mutable.  

Concatenation (#concat) does mutate.  The method #<< (for many classes such as Strings) is also mutating.  However, #+= is not mutating.  (there are some classes that have a #<< that do something other than append and are not mutating)

Setter methods for class instance variables and indexed assignment are not the same as assignment.  Setter methods and indexed assignment usually mutate the calling object.

Index Assigment is Mutating (#[]=)

Setters are Mutating. Setters look very similar to assignments, but they are methods that are defined to modify the state on an object. For example:

```ruby
person.name = 'Bill'
person.age = 23
```

### Evaluation Strategies

Every computer programming language uses some sort of *evaluation strategy* when passing objects. It determines when expressions are evaluated and what a method can do with the resulting objects.  Ruby uses *strict evaluation* exclusively.  With strict evaluation, every expression is evaluated and converted to an object becore it is passed along to a method.

The two most common strict evaluation strategies are pass by value and pass by reference. We will refer to them as *object passing strategies*.

* Ruby essentially is **pass by reference value**
* Saying t is **pass by reference** is accurate so long as you account for assignment and immutability
* "Ruby acts like **pass by value** for immutable objects, **pass by reference** for immutable objects" is a reasonable answer when learning about Ruby so long as you keep in mind that only *appears* to act like this

## Coding Tips 2

* Use new lines to organize your code into separate chunks to make it more readable
* Try to write methods that only do one thing (return a value, print something, mutate an argument, etc), not multiple things
* Name your methods appropriately (if the method outputs something, preface the name with `display_` or `print_`)
* Don't mutate a collection while iterating through it.  You can mutate the individual elements within that collection, just not the collection itself.
* Avoid variable shadowing (using the same name for a block variable as an outer scoped variable)
* Don't use assignment in a conditional
* Use underscores for unused parameters, for example:

```ruby
names = ['kim', 'joe', 'sam']
names.each { |_| puts "got a name!" }
```

