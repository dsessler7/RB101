def multiply(first_number, second_number)
  first_number * second_number
end

def square(number)
  multiply(number, number)
end

def nth_power(number, n)
  product = number
  (n-1).times { |_| product = multiply(product, number)}
  return product
end

puts square(5) == 25
puts square(-8) == 64
puts nth_power(5, 2) == 25
puts nth_power(-2, 5) == -32