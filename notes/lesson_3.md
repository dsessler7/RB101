* if you initialize a local variable in an `if` block, even if that `if` block doesn't get executed the local variable is initialized to `nil`
* You can initilize a variable with a reference to a new object containing the same value as another object by using the `#clone` method:
```ruby
greetings = { a: 'hi' }
informal_greeting = greetings[:a].clone
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings          # => {:a=>"hi"}
```
* statements do not return useful values - they always return `undefined`
* expressions return useful values
* parameters are merely names for arguments; arguments themselves are objects
