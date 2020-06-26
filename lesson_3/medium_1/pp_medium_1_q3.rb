def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# Bonus 1: this code determines if the divisor in the iteration is a factor of
# the number as the remainder is zero when a number is divided by one of its factors

# Bonus 2: the second to last line provides an implicit return of the factors array
