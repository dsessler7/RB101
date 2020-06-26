# Q5

We can break the tricky_method up into two methods, one for the string and one for the array.  Whichever method uses the "<<" operator and therefore mutates the argument should have a "!" on the end of the name.  The method that uses the assignment operator should not have a "!".  