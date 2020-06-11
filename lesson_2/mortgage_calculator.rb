=begin

Problem
* input is 3 numbers:
  * loan amount
  * Annual Percentage Rate (APR)
  * load duration
* output is the monthly payment

Examples
* Use loan calculator

Data Structure
* numbers
* regexp
* strings

Algorithm

START

GET loan amount, APR, and loan duration in years
SET monthly interest rate = APR / 12
SET loan duration in months = loan duration in years * 12
CALCULATE monthly payment using supplied formula
PRINT monthly payment

Code

=end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  /\d/.match(num) && /^\d*\.?\d*$/.match(num)
end

prompt "Hello! Welcome to the Monthly Mortgage Calculator!"

principal = ''
loop do
  prompt "Please enter the amount of your loan:"
  principal = gets.chomp

  if valid_number?(principal)
    break
  else
    prompt "That is not a valid number."
  end
end

apr = ''
loop do
  prompt "Please enter the Annual Percentage Rate (APR):"
  apr = gets.chomp

  if valid_number?(apr)
    break
  else
    prompt "That is not a valid number."
  end
end

loan_years = ''
loop do
  prompt "Please enter the loan duration in years:"
  loan_years = gets.chomp

  if valid_number?(loan_years)
    break
  else
    prompt "That is not a valid number."
  end
end

j = (apr.to_f / 12) / 100
n = loan_years.to_f * 12
m = principal.to_f * (j / (1 - (1 + j)**(-n)))

prompt "Your monthly payment is $#{format('%.2f', m)}."
