# They will both print 'BOB'.  This is because the string containers both act as pointers.
# So initially 'name' points to the value 'Bob'.  Then 'save_name' gets pointed at 'name', so
# it gets point at the same value 'Bob'.  When the #upcase! method is called on 'name' it mutates
# the caller and changes the value 'Bob', which both 'name' and 'save_name' are pointing at, to 'BOB'.