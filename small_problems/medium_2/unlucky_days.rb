=begin

Problem
* input is a year
* output is the number of fridays that fall on the 13th day of the month in that year

Examples
* 

Data Structure
* Time/Date

Algorithm
* create new time object with year value
* 365 day loop
  * is it a friday and is the day the 13th? if so, add to counter
  add a days worth of seconds to the time object

Code

=end

def friday_13th(year)
  t = Time.new(year)
  counter = 0
  365.times do |iteration|
    today = t + (60 * 60 * 24 * iteration)
    counter += 1 if today.friday? && today.day == 13
  end
  counter
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2

def friday_13th_2(year)
  counter = 0
  1.upto(12) do |month|
    today = Time.new(year, month, 13)
    counter += 1 if today.friday?
  end
  counter
end

puts friday_13th_2(2015) == 3
puts friday_13th_2(1986) == 1
puts friday_13th_2(2019) == 2

def five_fridays(year)
  t = Time.new(year)
  fridays = []
  365.times do |iteration|
    today = t + (60 * 60 * 24 * iteration)
    fridays << today.month if today.friday?
  end
  months = 0
  1.upto(12) do |month|
    months += 1 if fridays.select { |friday| friday == month }.size == 5
  end
  months
end

puts five_fridays(2020) == 4
puts five_fridays(2021) == 5
puts five_fridays(2024) == 4

