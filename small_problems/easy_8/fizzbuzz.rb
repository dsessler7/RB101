=begin

Problem
* inputs are two numbers, starting number and ending number
* output is print out of all numbers in that range except numbers divisible
by 3 are replaced by "Fizz" and numbers divisible by 5 are replaced by "Buzz"
If the number is divisible by 3 and 5, print "FizzBuzz"

Examples
* fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Data Structure
* numbers
* strings

Algorithm
* use range of numbers and iterate through it
* for each number print it out unless divisible by one of the numbers in which case, prtin the correct word

Code

=end

def fizzbuzz(start, finish)
  output_string = ''
  start.upto(finish) do |n|
    if n % 15 == 0
      output_string << 'Fizzbuzz, '
    elsif n % 3 == 0
      output_string << 'Fizz, '
    elsif n % 5 == 0
      output_string << 'Buzz, '
    else
      output_string << "#{n}, "
    end
  end
  puts output_string.chop.chop
end

fizzbuzz(1, 16)
