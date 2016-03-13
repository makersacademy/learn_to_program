# your code here

#birthday helper
#Read in the birth dates text file
#differentiate between names and dates
#set name and date
#set bday at name = date


file = file.read('birth_dates.txt')
bday = Hash.new
file.each_line do |i|
  word = i.split (',')
  bday[word[0]] = "#{word[1]}#{word[2]}"
end

puts "Please a name"
name = gets.chomp
date = bday[name]
puts "#{name}'s next birthday is on #{date[0..06]}"
end
