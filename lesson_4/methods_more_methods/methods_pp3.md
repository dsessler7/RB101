# PP3

What is the return value of reject in the following code? Why?

```ruby
[1, 2, 3].reject do |num|
  puts num
end
```

The return value is [1, 2, 3] because the `reject` method returns elements from the collection for which the block returns false.  Since the last line in the block is a `puts` line and `puts` returns nil, the truthiness of each iteration is false and therefore every element from the original collection is returned.
