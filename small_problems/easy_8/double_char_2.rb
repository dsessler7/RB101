def double_consonants(input_string)
  output_string = ''
  input_string.each_char do |char|
    if /[a-zA-Z&&[^aeiouAEIOU]]/.match(char)
      output_string << char*2
    else
      output_string << char
    end
  end
  output_string
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
