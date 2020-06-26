=begin

Problem
* inputs are three scores
* output is a grade for the average score of the three input scores

Examples
* 

Data Structure
* numerics
* strigns

Algorithm
* avg = (a + b + c) / 3
* case statement for grade

Code

=end

def get_grade(score1, score2, score3)
  avg = (score1 + score2 + score3) / 3.0
  case
  when avg >= 90
    'A'
  when avg >= 80 && avg < 90
    'B'
  when avg >= 70 && avg < 80
    'C'
  when avg >= 60 && avg < 70
    'D'
  else
    'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
