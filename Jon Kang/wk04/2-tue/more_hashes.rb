# More Hashes
require 'pry'

users =
{
   "Jonathan" =>
   {
      :twitter => "tronathan",
      :favorite_numbers => [12, 42, 75, 24, 8],
   },
   "Erik" =>
   {
      :twitter => "sferik",
      :favorite_numbers => [8, 12, 24, 15, 0],
   },
   "Anil" =>
   {
      :twitter => "bridgpal",
      :favorite_numbers => [12, 14, 24, 15, 99],
   },
}

# 1. How would you access Jonathan's Twitter handle?
# users["Jonathan"][:twitter]

# 2. How would you add the number 7 to Erik's favorite numbers?
# users["Erik"][:favorite_numbers] << 7

# 3. How would you add yourself to the user's hash?
# users["Jon"] = { "Jon" => {:twitter => "Kangb0tmang", :favorite_numbers => [8, 19, 24, 30, 53]}}

# 4. How would you return the array of Erik's favorite numbers?
# users["Erik"][:favorite_numbers]

# 5. How would you return the smallest of Erik's favorite numbers?
# users["Erik"][:favorite_numbers].min

# 6. How would you return an array of Anil's favourite numbers that are also even?
# users["Anil"][:favorite_numbers].select { |numbers| numbers.even? }

# 7. How would you return an array of the favorite numbers common to all users?
j_fave_nums = users["Jonathan"][:favorite_numbers]
e_fave_nums = users["Erik"][:favorite_numbers]
a_fave_nums = users["Anil"][:favorite_numbers]
# common_nums = []
all_nums = j_fave_nums.concat(e_fave_nums, a_fave_nums)
mapped_nums = Hash[all_nums.map { |nums| [nums, all_nums.count(nums)] }]
# mapped_nums.each do |key,value|
#    if value > 1
#       common_nums.push(key)
#    end
# end

# 8. How would you return an array containing all user's favorite numbers, sorted, and excluding duplicates?
other_nums = []
mapped_nums.each do |key,value|
   other_nums.push(key)
end
other_nums.sort
# OR
all_nums.sort.uniq

binding.pry
puts "Twitter and Numbers HW"
