=begin

Problem
* input is hash of munsters with names as keys and hash of age and gender as values
* output is hash of munsters with age group added to hash value

Examples
* 

Data Structure
* hashes
* arrays?

Algorithm
* iterate through hash
  * use case statement to determine age group (age # is value["age"])
  * in each respective case statement add in the "age_group" key/value pair

Code

=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_value do |value|
  value["age_group"] = case value["age"]
                       when 0..17
                         "kid"
                       when 18..64
                         "adult"
                       else
                         "senior"
                       end
end

p munsters
