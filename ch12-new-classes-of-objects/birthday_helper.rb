birthdays = {}

#get list of birthdays from my handy birthdays doc
File.open "/Users/Sarah/Documents/Birthdays.txt", "r" do |f|
  f.each_line do |line|
    line = line.chomp("\n")
    length = line.length
#split it into person & their birthdate
    if line[-11] == line[-11].upcase
      birthdays[(line[0..(length - 14)])] = line[-11, 11]
    else
      birthdays[(line[0..(length - 15)])] = line[-12, 12]
    end
  end
end

puts "Whose birthday are you after?"
birthday_request = gets.chomp
if birthdays[birthday_request] == nil
  puts "Sorry, I don't know!"
else
puts "#{birthday_request}'s birthday is: #{birthdays[birthday_request]}"
end