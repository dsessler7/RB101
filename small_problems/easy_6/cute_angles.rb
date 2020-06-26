=begin

Problem
* input is a floating point number that represents an angle between 0 and 360 degrees
* output is a string that represents the angle in degrees, minutes, and seconds

Examples
* 30 => %(30°00'00")
* 76.73 => %(76°43'48")

Data Structure
* numbers
* strings

Algorithm
* 

Code

=end

DEGREE = "\xC2\xB0"

def dms(angle)
  angle = angle % 360
  degrees, remainder = angle.divmod(1)
  minutes, remainder = (remainder.round(4)*60).divmod(1)
  seconds = remainder.round(4)*60
  sprintf(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(0°00'00")
puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")