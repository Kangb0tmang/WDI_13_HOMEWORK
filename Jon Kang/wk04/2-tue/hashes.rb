# Hashes
require 'pry'

# Start with this hash
ninja_turtle =
{
   name: "Michaelangelo",
   weapon: "Nunchucks",
   radical: true
}

# Add a key 'age' to ninja_turtle. Set it to whatever numerical value you'd like
ninja_turtle[:age] = 18

# Remove the radical key-value pair from ninja_turtle
ninja_turtle.delete_if { |key,value| key == :radical }

# Add a key pizza_toppings to ninja_turtle. Set it to an array of strings (eg. "cheese", "pepperoni", "peppers")
ninja_turtle[:pizza_toppings] = ["cheese", "pepperoni", "peppers"]

# Access the first element of pizza_toppings
ninja_turtle[:pizza_toppings][0]
# OR
ninja_turtle[:pizza_toppings].first

# Produce an array containing all of ninja_turtle's keys using a method
keys_array = ninja_turtle.keys

# Bonus
# Print out each key-value pair in the following format - "KEY's is equal to VALUE" -- using a method
ninja_turtle.each { |key,value| puts "#{key} is equal to #{value}" }

binding.pry
puts "Teenage Mutant Ninja Turtles!"
