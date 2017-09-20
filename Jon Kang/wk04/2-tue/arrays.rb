# Arrays
require 'pry'

# Start with this array
planeteers = ["Earth", "Wind", "Captain Planet", "Fire", "Water"]

# Second value
# planeteers[2]

# Add "Heart" to the end of planeteers
# planeteers.push("Heart")
# planeteers << "Heart"

# Remove "Captain Planet" from the array (without using a method)
# planeteers - ["Captain Planet"]

# Combine plneteers with rangers = ["Red", "Blue", "Pink", "Yellow", "Black"] and save the result in a variable called heroes
rangers = ["Red", "Blue", "Pink", "Yellow", "Black"]
heroes = planeteers.concat(rangers)

# Alphabetize the contents of heroes using a method
# alpha_heroes = planeteers.concat(rangers).sort

# Randomize the contents of heroes using a method
# randomized_heroes = planeteers.concat(rangers).shuffle

# Bonus
# Select a random element from heroes using a method
# heroes.sample

# Select all elements in heroes that begin with "B" using a method
heroes.select { |hero| hero.start_with?("B") }
# OR
heroes.select { |hero| hero.start_with?("B") || hero.start_with?("b") }
# OR
heroes.select { |hero| hero.[0] =~ /b/i }

binding.pry
puts "Captain planet, he's our hero!"
