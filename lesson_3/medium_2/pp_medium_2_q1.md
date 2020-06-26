* The four variables have their objects which have their object ids. Four more variables are created that hold the object ids of the initial four objects.
* When the program enters the block, new variables are created that are assigned to the object ids of the objects held by the initial variables.  These object ids are the same as those before entering the block.
* The initial variables are then reassigned to new values.  When this occurs, new objects with new object ids are created.
* New 'inner' variables are created and assigned to the 'outer' variables that just got the new values.  More variables are created to hold the 'inner' variables' object ids. These object ids are the same as the 'outer' variables' object ids.
* We exit the block.
* Since the values did change inside the block and therefore new objects and object ids were created, the 'outer' object ids are different from what they were before entering the block.
* Outside the block we no longer have access to the 'inner' variables since they were defined inside the block.