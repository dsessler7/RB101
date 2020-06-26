def word_sizes(string)
  string.split.each_with_object({}) do |word, hash|
    temp_word = word.gsub(/[^a-z]/i, '')
    hash.has_key?(temp_word.length) ? hash[temp_word.length] += 1 : hash[temp_word.length] = 1
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
