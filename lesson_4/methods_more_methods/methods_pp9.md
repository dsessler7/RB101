# PP9

What is the return value of map in the following code? Why?

```ruby
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
```

The return value is [nil, 'bear']. This is because the `map` method returns a new array based on the return values of the block.  In the first iteration, the value is 'ant' which is not greater than 3 in size so the lines inside the if statement are not executed and therefore `nil` is returned by the `if` statement.  On the second iteration, 'bear' is greater in size than 3 so we step into the if statement and the value of 'bear' is returned.
