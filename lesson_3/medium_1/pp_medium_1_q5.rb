# The problem is that the method does not have access to the 'limit' variable
# since it is defined outside the method definition.

# This can be fixed by: 
# 1. changing the 'limit' variable to a constant (LIMIT)
# 2. moving the 'limit' variable initialization inside the method
# 3. making the limit an argument in the method definition
