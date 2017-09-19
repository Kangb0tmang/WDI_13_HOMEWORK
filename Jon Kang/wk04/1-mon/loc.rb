# Another method
# puts File.foreach('data.txt').count

puts "Enter a filename:"
filename = gets.chomp.to_s

puts filename + ' has ' + File.foreach(filename).count.to_s + ' lines'
