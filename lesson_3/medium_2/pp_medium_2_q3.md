# Q3

I believe it will output:
```ruby
My string looks like this now: pumpkins
My array looks like this now: ["pumpkins", "rutabaga"]
```
This is because the "+=" operator used on the string is an assignment operator and therefore doesn't mutate the object in the original variable that was passed into the method.  The "<<" operator used on the array on the other DOES mutate the object in the variable that was passed into the method, so "rutabaga" is added to the array object that the variable outside the method points to.
