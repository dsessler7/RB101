# Q2

* At the start of the `fun_with_ids` method definition we have 4 variables with four objects (technically three objects since "d_outer" contains the first element of the array in "c_outer" which is the same number as "a_outer" which makes it the same object).  Four more variables are created to hold the object ids of the 4 objects in the initial 4 variables.
* These 8 variables are then passed into the `an_illustrative_method` method
* Inside the method, the variables' values are the same because while they are essentially new variables with scope limited to inside the method, they are still pointing to the same objects and therefore have the same object ids.
* The "outer" variables are given new values; however, as described in the previous bullet, these are not the same variables as the ones passed into the method, they are new variables with the same names with scope limited to inside the method.  Since the values are assigned, the original objects are not mutated.  The new objects that these variables hold have new object ids
* New "inner" variables are assigned to the contents of the method's "outer" variables and "inner id" variables are created to hold these new variables' object ids.
* The "inner" object ids are the same as the method's "outer" object ids
* We exit the method and reference the "outer" variables again and now we are referencing the "outer" variables from before the method that were unchanged by the method.  These variables' object ids are unchanged before/after the method.
* The program tries to reference the "inner" variables but is unable to because they were limited in scope to only inside the method definition. Program rescues the error and outputs "ugh ohhhhh"
