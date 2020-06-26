=begin

Problem
* input is a string
* output is a printing out of the text within a box

Examples
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+



Data Structure
* strings

Algorithm
* 

Code

=end

def print_in_box(string)
  length = string.size

  5.times do |i|
    if i == 2
      print '| '
      print string
      puts ' |'
    elsif i.even?
      print '+-'
      length.times { print '-' }
      puts '-+'
    else
      print '| '
      length.times { print ' ' }
      puts ' |'
    end
  end
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

MAX_LENGTH = 76

def print_in_box_wrap(input_string)
  string_length = input_string.size
  number_of_lines = string_length / MAX_LENGTH
  number_of_lines += 1 unless (string_length % MAX_LENGTH).zero?
  number_of_lines = 1 if number_of_lines.zero?
  string_length = MAX_LENGTH if string_length > MAX_LENGTH

  string_lines = []
  number_of_lines.times {string_lines << input_string.slice!(0, MAX_LENGTH).ljust(string_length, ' ')}

  horizontal_rule = "+#{'-' * (string_length + 2)}+"
  empty_line = "|#{' ' * (string_length + 2)}|"

  puts horizontal_rule
  puts empty_line
  number_of_lines.times { |i| puts "| #{string_lines[i]} |" }
  puts empty_line
  puts horizontal_rule
end

print_in_box_wrap('To boldly go where no one has gone before. ' * 10)
print_in_box_wrap('To boldly go where no one has gone before. ')
print_in_box_wrap('')
