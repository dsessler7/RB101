# puts "the value of 40 + 2 is " + (40 + 2)
#
# The above code will throw an error because you cannot concatenate a string with a number
# Below are two ways to fix this:

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{(40 + 2)}"