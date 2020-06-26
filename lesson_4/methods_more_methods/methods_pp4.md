# PP4

What is the return value of each_with_object in the following code? Why?

```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
```

The return value is a hash: {'a'=>'ant', 'b'=>'bear', 'c'=>'cat'}.  This is because the `each_with_object` method specifies an object that acts as a collector and is returned.  In this example it is a hash as designated by the {} in the method argument parentheses.  The keys are the first letter of each value because the `value[0]` is accessing the first letter in each string.
