# Given this data structure write some code to return an array containing the 
# colors of the fruits and the sizes of the vegetables. The sizes should be 
# uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

colors_and_sizes = hsh.each_with_object([]) do |(_, value), arr|
  if value[:type] == 'fruit'
    arr << value[:colors].map { |color| color.capitalize }
  else
    arr << value[:size].upcase
  end
end
p colors_and_sizes