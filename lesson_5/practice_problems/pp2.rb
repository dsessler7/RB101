=begin

Problem
* input is an array of hashes of books (title, author, and publish year)
* output is the same array of hashes ordered by ascending publish year

Examples
* 

Data Structure
* Arrays
* Hashes
* Numeric

Algorithm
* SORT_BY
  * hash[:published].to_i

Code

=end

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p books.sort_by { |hash| hash[:published].to_i }
