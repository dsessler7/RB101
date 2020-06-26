# PP1

```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```

The return value of the above select method is `[1, 2, 3]`.  

The select method selects the elements from the collection when the block returns a truthy value on that elements iteration.  Since the 'hi' line is the last line of the block, it is always being used as the return value of the block and since it is not false or nil, it is considered 'truthy'.  Therefore, the block return is truthy for all iterations and all elements of the original collection are selected.
