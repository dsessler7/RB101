# Write a method that returns one UUID when called with no parameters.

def uuid()
  output_string = ''
  8.times { output_string << rand(16).to_s(16) }
  output_string << '-'
  3.times do
    4.times { output_string << rand(16).to_s(16) }
    output_string << '-'
  end
  12.times {output_string << rand(16).to_s(16) }
  output_string
end
p uuid
