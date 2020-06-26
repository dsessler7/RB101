=begin

Problem
* input is a positive integer, n
* output is a right triangle whose sides have n stars
* output triangle's hypotenuse should go from lower left to top right

Examples
* 

Data Structure
* numbers
* strings

Algorithm
spaces = (n + 1) - i
stars = i

Code

=end

def triangle(n)
  (n + 1).times do |i|
    print " " * (n + 1 - i)
    puts "*" * i
  end
end

triangle(5)
triangle(9)
