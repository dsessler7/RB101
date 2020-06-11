I would expect the code to print out:
```ruby
1
2
2
3
```
This is because the `#uniq` method does not mutate the caller, so the `numbers` array is unchanged.
