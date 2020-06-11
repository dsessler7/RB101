It will output:

```
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo
```

This is because on line 3, the #<< method puts the pointer of each item in array1 into array2 such that the memory location for each item in the two arrays are the same. Then, on line 4 when the #upcase! method is used, it mutates the caller and changes the value of the words starting with 'C' or 'S' in array1 so that all letters are capitalized. Since the individual items in each array are referencing the same locations in memory, this change is also seen in array2.