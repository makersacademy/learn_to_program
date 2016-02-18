birthdays = Hash[*File.read('txt.txt').split(/[|\n]+/)]


puts "Name?"
name = gets.chomp
puts "#{name}'s birthday is #{birthdays[name]}"