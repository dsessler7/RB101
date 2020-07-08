=begin

Problem
* input is a string of words
* output is same string with number words as digits

Examples
* 

Data Structure
* Strings
* Numerics
* Arrays?

Algorithm
* create hash for number conversion
* iterate through hash
  * gsub word for number

Code

=end

NUMBERS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(input_string)
  NUMBERS.each do |word, num|
    input_string.gsub!(/\b#{word}\b/i, num)
  end
  input_string
end

def phone_number(phone_number_str)
  phone_number_str.insert(0, '(')
  phone_number_str.insert(4, ') ')
  phone_number_str.insert(9, '-')
end

def word_to_digit2(input_string)
  words = input_string.split
  counter = 0
  consecutive_numbers = 0
  number_found = false
  loop do
    NUMBERS.each do |number, digit|
      if /\b#{number}\b/i.match?(words[counter])
        words[counter].gsub!(/\b#{number}\b/i, digit)
        if consecutive_numbers > 0
          words[counter - 1] << words.slice!(counter)
        else
          counter += 1
        end
        number_found = true
        break
      end
    end
    if number_found == true
      consecutive_numbers += 1
    else
      if consecutive_numbers == 10
        phone_number(words[counter - 1]) # call phone numbers method
      end
      consecutive_numbers = 0
      counter += 1
    end
    number_found = false
    break if counter >= words.size
  end
  words.join(' ')
end

puts word_to_digit2('My id number is 1234567890. Please call me at five five five one two three four five five five. Thanks.')
puts word_to_digit2('Two dollars and five cents for an ice cream cone.')
