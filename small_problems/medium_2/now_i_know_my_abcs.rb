=begin

Problem
* input is a word
* output is a boolean
  * boolean is determined by whether the input word meets the following rules:
    * is only constructed by a set of blocks of letters where each block can only be used once

Examples
* 

Data Structure
* Strings
* Hash or Array?

Algorithm
* iterate through input string
  * find corresponding block for letter and delete/pop it off so it can't be used again
  * if letter can't be found, return false

Code

=end

def block_word?(input_string)
  letters = [['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p'], ['n', 'a'], ['g', 't'], ['r', 'e'],
            ['f', 's'], ['j', 'w'], ['h', 'u'], ['v', 'i'], ['l', 'y'], ['z', 'm']]

  input_string.each_char do |char|
    return false unless letters.flatten.include?(char.downcase)
    letters.reject! { |block| block.include?(char.downcase) }
  end
  return true
end

puts block_word?('Botch') == false
puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
