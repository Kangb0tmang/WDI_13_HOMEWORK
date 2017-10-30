# Another method
# puts File.foreach('data.txt').count

puts "Enter a filename:"
filename = gets.chomp

puts filename + " has " + File.foreach(filename).count.to_s + " lines"
