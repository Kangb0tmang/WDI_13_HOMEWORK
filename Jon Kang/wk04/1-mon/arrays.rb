require 'pry'

# 1. Week Array
# days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
# OR
# days_of_the_week = []
# puts "Enter in the days of the week"
# while days_of_the_week.length < 7
#    day = gets.chomp.to_s
#    days_of_the_week.push(day)
# end

puts 'End of program'
binding.pry

# 2. My calendar says the first day is Sunday...
# last_day = days_of_the_week.pop
# days_of_the_week.unshift(last_day)
# puts days_of_the_week

# 3. Create a new array of the adys of the week:
# weekdays = []
# weekend = []
# new_week = []

# Method 1
# days_of_the_week.each do |day|
#    if (day == 'Saturday' || day == 'Sunday')
#       weekend.push(day)
#    else
#       weekdays.push(day)
#    end
# end

# Method 2
# days_of_the_week.each do |day|
#    if (day == 'Saturday')
#       weekend.push(day)
#    elsif (day == 'Sunday')
#       weekend.push(day)
#    else
#       weekdays.push(day)
#    end
# end

# Make new array
# new_week.push(weekdays, weekend)
# puts "New Week"
# puts new_week
# puts new_week.count

# 4. Remove either the weekedays or weekends
# new_week.pop(1)
# puts "Weekdays or Weekend?"
# puts new_week
# puts new_week.count

# 5. Sort the remaining days alphabetically
# puts "Alphabetical Order"
# sort_week = new_week[0]
# sort_week.length
# alpha_sort_week = sort_week.sort
# puts alpha_sort_week
