# Multiple Signatures

**What do each of these puts statements output?**

```ruby
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
```

Will output:

```ruby
# => IndexError (index 7 ouside of array bounds -5...5)
'beats me'
14
```

The fetch method will throw an IndexError if you try to grab the item at an index outside of a collection.  If you provide a second argument, it is what will be returned instead of the IndexError if you try to access an index outside of the proper range.  If a block is provided, and you attempt to access an index outside the proper range, it will determine the return value.
