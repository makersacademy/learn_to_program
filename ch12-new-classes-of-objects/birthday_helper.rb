require 'date'

puts "-----"

filename = "birthdays.txt"

bdays = Hash.new

File.read(filename).each_line do |line|
  bdays[line.split(',', 2)[0].strip] = line.split(',', 2)[1].strip
end

puts "Enter the name of the person you're looking for: "
person = gets.chomp.split(' ').map{|i| i.downcase.capitalize}.join(' ')

if bdays[person] != nil
  age = ((Time.now - Date.parse(bdays[person]).to_time) / 60 / 60 / 24 / 365.25).to_i
  puts "#{person} was born on #{bdays[person]}. He is now #{age} years old."
else
  puts "#{person} not found on the list."
end

puts "-----"