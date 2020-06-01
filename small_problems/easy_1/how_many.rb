def count_occurrences(arr)
  results = Hash.new
  arr.each do |elem|
    if results[elem]
      results[elem] = results[elem] + 1
    else
      results[elem] = 1
    end
  end
  results.each { |k,v| puts "#{k} => #{v}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)