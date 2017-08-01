require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
# Load the second store from the database and assign it to @store2.
# Update the first store (@store1) instance in the database. (Change its name or something.)





@store1 = Store.find(1)
@store2 = Store.find(2)

# instnace variables defined like this (not in a class) can be accessed
# from different files (as long as properly required) and can also act like JS variables
# (they can be accessed from within other methods whereas normal ruby variables cannot be seen
# from within the scope of said methods)


@store1.update(
  name: "Ambleside",
  annual_revenue: 1000000
)