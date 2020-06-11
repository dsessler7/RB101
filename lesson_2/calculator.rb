# ask the user for two numbers
# ask the user for the operation
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  /\d/.match(num) && /^-?\d*\.?\d*$/.match(num)
end

def operation_to_message(op)
  operation = case op
              when '1'
                'Adding'
              when '2'
                'Subtracting'
              when '3'
                'Multiplying'
              when '4'
                'Dividing'
              end

  # Other code goes here, if needed

  operation
end

prompt MESSAGES['welcome']

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt MESSAGES['valid_name']
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  num1 = ''
  loop do
    prompt MESSAGES['first_number']
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt MESSAGES['invalid_number']
    end
  end

  num2 = ''
  loop do
    prompt MESSAGES['second_number']
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt MESSAGES['invalid_number']
    end
  end

  prompt <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt MESSAGES['invalid_op']
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result =  case operator
            when '1'
              num1.to_f + num2.to_f
            when '2'
              num1.to_f - num2.to_f
            when '3'
              num1.to_f * num2.to_f
            when '4'
              num1.to_f / num2.to_f
            end

  prompt "The result is #{result}."

  prompt MESSAGES['again']
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for using Calculator, #{name}! Bye!"
