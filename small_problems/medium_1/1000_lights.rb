=begin

Problem
* input is a number, n
  * this number determines the size of "bank of lights" (array)
  * it also determines the number of iterations of toggling lights
* output is an array that identifies which lights are on after n repetitions

Examples
* if n = 5 => [1, 4] (lights 1 and 4 are on)
* n = 10 => [1, 4, 9]

Data Structure
* Arrays

Algorithm
* create array of n + 1 size and set each element to default to false (make sure to do Bool.new for default value)
* 1.upto(n) DO
  * each_with_index 
    * if array index is a multiple of the outer loop index, toggle element
* on resulting array:
* each_with_index
  * if elem == true
    output_array << i

Code

=end

def lights(n)
  lights_array = Array.new(n + 1, false)

  1.upto(n) do |iteration|
    lights_array.each_with_index do |light, i|
      lights_array[i] = !light if i % iteration == 0
    end
  end

  lights_on = []
  lights_array.each_with_index { |light, i| lights_on << i if light == true && i != 0 }
  lights_on
end

p lights(5)
p lights(10)
p lights(1000)
