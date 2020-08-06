# Lesson 6: Slightly Larger Programs

## Introduction

This lesson is about working through slightly larger programs. Here is the suggested approach:

1. Break down the problem into smaller pieces. Make sure you understand the problem well. Don't be afraid to start over if your first stab at the program isn't appropriate/optimal.
2. Map out the flow of the program in a flowchart. Use sub-processes to encapsulate well-defined components of the problem.
3. Write out pseudo-code for each sub-process.  It will most likely translate into a method (or several methods). Define clear inputs and clear outputs for each sub-process.
4. Play around with the code. Write every line (no copy/paste) and make sure you understand it.
5. Do assignments in sequence.
6. Don't be afraid to watch walk-through videos. If you do, code along.

## Debugging with Pry

### How do we debug code?

* Identify the problem
  * use error message or stack trace if available
  * find the section, or ideally the line, where the issue resides
* Understand the problem
* Implement a solution

### Types of errors

#### Syntax Errors

* The code you have written does not conform to the grammar of the programming language you are using
* Generally stops your code from functioning

#### Logical Errors

* Errors in the logic of your code
* code generally runs, but produces unexpected results
* usually a bit harder to debug, since it does not result in an error message or stack trace

### What is pry?

It is a rubygem.  Have to install the gem (done) and have to add `require 'pry'` at the top of your program to access pry.

It is a REPL (Read Evaluate Print Loop).  It's an interactive environment that:

* takes user input
* evaluates the input
* returns the results to the user
* loops back to the start

### Using pry

* using `binding.pry`
  * A binding is something that contains references to any variables that were in scope at the point where it was created
  * pry interrupts program execution and *pries open* the binding so that we can have a look around
* `whereami` shows where you are in the code

### Stepping through and into code

* `pry-byebug`
* Extends pry with some additional commands
  * `next`
  * `step`
  * `continue`
* There are similary gems such as `pry-nav` and `pry-debugger`
* The concept of stepping through and into code is not limited to pry or ruby

## Notes from Tic Tac Toe

You can use the splat operator to pass in each element of an array to a method as comma separated values:

```ruby
arr = [1, 2, 3]
some_method(*arr)
# is equivalent to:
some_method(arr[0], arr[1], arr[2])
```
