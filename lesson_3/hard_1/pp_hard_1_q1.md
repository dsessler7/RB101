# Hard 1: Q1

I expect an error about an undefined local variable to be thrown...

And I was wrong.  Apparently, if you initialize a local variable in an `if` block, even if that `if` block doesn't get executed the local variable is initialized to `nil`.