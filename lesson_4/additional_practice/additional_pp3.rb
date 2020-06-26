ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

less_than_100 = ages.select do |_, value|
  value < 100
end
puts less_than_100
