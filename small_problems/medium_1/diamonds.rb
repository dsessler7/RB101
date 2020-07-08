=begin

Problem
* input is an odd, positive integer, n
* output is a diamond of * that is n wide at its widest
  * the diamond is also n lines long
  * the lines are always odd number of *'s

Examples
* 

Data Structure
* Strings

Algorithm
* spaces = 4
* stars = 8
* spaces will be decremented by 1 every round and will be used as "spaces.abs"
(so the negative numbers work)
* stars will be decremented by 2 and used as "(9 - stars.abs)"

Code

=end

def diamond(n)
  spaces = n / 2
  stars = n - 1
  n.times do
    puts ' ' * spaces.abs + '*' * (n - stars.abs)
    spaces -= 1
    stars -= 2
  end
end

diamond(1)
diamond(3)
diamond(5)
diamond(7)
diamond(9)

def diamond_center(n)
  stars = n - 1
  n.times do
    puts ('*' * (n - stars.abs)).center(n)
    stars -= 2
  end
end

diamond_center(1)
diamond_center(3)
diamond_center(5)
diamond_center(7)
diamond_center(9)

def hollow_diamond(n)
  spaces = n - 3
  puts '*'.center(n)
  (n - 2).times do
    puts ('*' + ' ' * (n - spaces.abs - 2) + '*').center(n)
    spaces -= 2
  end
  puts '*'.center(n) if n > 1
end

hollow_diamond(1)
hollow_diamond(3)
hollow_diamond(5)
hollow_diamond(7)
hollow_diamond(9)
