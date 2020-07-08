=begin

Problem
* input is three angles of a triangle
* output is a symbol denoting whether the triangle is a right, acute, or obtuse triangle 
or invalid if the angles do not add up to 180 degrees or if any angles are 0

Examples
* 

Data Structure
* numbers

Algorithm
* angles = [a, b, c]
* if any are zero or sum is not 180 => invalid
* if angles.include?(90) => right
* if angles.all? less than 90 => acute
* else => obtuse  

Code

=end

def triangle(a, b, c)
  angles = [a, b, c]
  if angles.any?(&:zero?) || angles.sum != 180
    :invalid
  elsif angles.include?(90)
    :right
  elsif angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
