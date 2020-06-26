ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

minimum_age = ages.first[1]
ages.each_value { |v| minimum_age = v if v < minimum_age }
p minimum_age