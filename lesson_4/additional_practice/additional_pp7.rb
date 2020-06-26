statement = "The Flintstones Rock"

letter_hash = Hash.new
statement.gsub(' ', '').each_char do |char|
  letter_hash.key?(char) ? letter_hash[char] += 1 : letter_hash[char] = 1
end
p letter_hash
