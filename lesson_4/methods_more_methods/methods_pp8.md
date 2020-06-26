# PP8

How does take work? Is it destructive? How can we find out?

```ruby
arr = [1, 2, 3, 4, 5]
arr.take(2)
```

Having never used or read about `#take`, I'm really not sure how it works.  My guess is that it is destructive given its name (although it doesn't have a ! on the end) and that it removes that object from the collection if it in fact exists...

Checked the documentation and I am incorrect. It returns the first n number of elements, where n is the method argument, and it is non-destructive.  So in this case it returns [1, 2]
