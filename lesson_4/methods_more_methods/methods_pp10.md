# PP10

What is the return value of the following code? Why?

```ruby
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
```

The return value is [1, nil, nil].  The if statement asks if the element is greater than 1, if it is the `puts num` line is executed which returns `nil`.  Else, it returns the number.  Since 1 is not greater than 1, it returns itself.  But 2 and 3 are greater than one so for those iterations, the puts line is executed and `nil` is returned.
