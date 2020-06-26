# Optional Arguments Redux

## Assume you have the following code:

```ruby
require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
```

### What will each of the 4 puts statements print?

```ruby
-4712-01-01
2016-01-01
2016-05-01
2016-05-13
```
