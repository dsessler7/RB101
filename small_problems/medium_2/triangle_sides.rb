=begin

Problem
* inputs are the lengths of the three sides of a triangle
* output is a symbol denoting whether it is a equilateral, isosceles, or scalene triangle 
or invalid if the lengths provided cannot actually make a triangle

Examples
* 

Data Structure
* numbers

Algorithm
* if any are zero return :invalid
* sort lengths
* if the sum of shorter two is not greater than longest side, return invalid
* if three sides are equal, return : equilateral
* if a == b || b == c || c == a, return isosceles
else return scalene

Code

=end

def triangle(a, b, c)
  sides = [a, b, c].sort
  case
  when sides.any?(&:zero?) || sides[2] >= sides[0] + sides[1]
    :invalid
  when a == b && b == c
    :equilateral
  when a == b || b == c || c == a
    :isosceles
  else
    :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
