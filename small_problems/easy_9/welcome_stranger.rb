=begin

Problem
* inputs are an array and a hash
  * Array will have 2 or more elements that represent the parts of a person's name
  * Hash will have two keys: title and occupation and their values
* output is a greeting that uses the person's full name and mentions their title and occupation

Examples
* 

Data Structure
* Arrays
* Hashes

Algorithm
* create a string and use interpolation to provide values from input collections

Code

=end  

def greetings(name_array, job_details)
  print "Hello, #{name_array.join(' ')}! Nice to have a #{job_details[:title]}"
  puts " #{job_details[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
