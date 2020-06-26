def after_midnight(time_string)
  hours_minutes = time_string.split(':')
  hours = hours_minutes[0].to_i
  minutes = hours_minutes[1].to_i
  (hours * 60 + minutes) % 1440
end

def before_midnight(time_string)
  (1440 - after_midnight(time_string)) % 1440
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
