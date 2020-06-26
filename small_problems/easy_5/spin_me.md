# Spin Me Around In Circles

You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

```ruby
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"
```

It is a new object because the original object is used to create an array of words which is a new object.  The words in the array are then reversed and then the words are rejoined together as a new string object.
