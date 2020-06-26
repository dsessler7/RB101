=begin

Problem
* input is an integer, if positive it is the number of minutes after midnight, if negative, the number of minutes before midnight
* output is a string of the time in hh:mm format

Examples
* 0 => "00:00"
* -3 => "23:57"
* 3000 => "02:00"

Data Structure
* numbers
* strings

Algorithm
* get hours and minutes, if more than 24 hours, get remainder of total hours divided by 24

Code

=end

def time_of_day(minutes)
  minutes += 1440 until minutes > 0
  time = minutes.divmod(60)
  time[0] = time[0] % 24
  return "#{time[0]}".rjust(2, '0') + ':' + "#{time[1]}".rjust(2, '0')
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
DAYS_PER_WEEK = 7
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY
DAYS = {
  0 => 'Sunday',
  1 => 'Monday',
  2 => 'Tuesday',
  3 => 'Wednesday',
  4 => 'Thursday',
  5 => 'Friday',
  6 => 'Saturday'
}

def delta_time(minutes)
  delta_days, delta_minutes = minutes.divmod(MINUTES_PER_DAY)
  delta_days = delta_days % DAYS_PER_WEEK
  time = delta_minutes.divmod(60)
  return "It is " + "#{time[0]}".rjust(2, '0') + ':' + "#{time[1]}".rjust(2, '0') + " on #{DAYS[delta_days]}"
end

p delta_time(-1437)
p delta_time(-4231)
p delta_time(60)
p delta_time(12000)
