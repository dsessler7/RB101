=begin

Problem
* input is a string
* output is a boolean that is true/false based on whether all parenthesis in the string are properly matched

Examples
* 

Data Structure
* strings
* regex

Algorithm
* input_string.EACH_CHAR
  * if char is (, push something onto a stack
  * if char is ), pop something off of stack
    * if there's nothing to pop off, return false
* if there is anything left on the stack at the end, return false
  * else, return true

Code

=end

def balanced?(input_string)
  stack = []
  input_string.each_char do |char|
    stack.push(1) if char == '('
    if char == ')'
      pair = stack.pop
      return false if pair.nil?
    end
  end
  stack.empty?
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false

# Further Exploration
def all_balanced?(string)
  parens = 0
  square_bs = 0
  curly_bs = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0

    square_bs += 1 if char == '['
    square_bs -= 1 if char == ']'
    break if square_bs < 0

    curly_bs += 1 if char == '{'
    curly_bs -= 1 if char == '}'
    break if curly_bs < 0
  end
  return false if string.count(%w(")[0]).odd? || string.count(%w(')[0]).odd?

  (parens + square_bs + curly_bs).zero?
end

puts all_balanced?("{[('')]}") == true
puts all_balanced?("}[('')]}") == false
puts all_balanced?("y'all") == false