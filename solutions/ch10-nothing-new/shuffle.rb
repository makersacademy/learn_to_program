puts "Enter a list you would like to shuffle:"

shuffled = []
puts shuffled

while (array = gets.chomp) != ""
  shuffled.push(array)
end

puts shuffled.shuffle