# PP7

What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

```ruby
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
```

The blocks return value is a boolean value for each iteration and it is determined by the truthiness of the last line in the block.  The return value of the `any?` method is also a boolean value.  It is true if any of the iterations yield a truthy value, false otherwise.  In this case, it returns true.
