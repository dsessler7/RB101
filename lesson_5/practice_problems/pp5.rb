# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# figure out the total age of just the male members of the family:

total_age = munsters.inject(0) do |memo, munster|
  if munster[1]['gender'] == 'male'
    memo + munster[1]['age']
  else
    memo
  end
end
puts total_age
