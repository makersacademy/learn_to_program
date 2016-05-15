def birthday_helper()

birthdays = {}

File.readlines("/Users/Home/Week-3/learn_to_program/ch12-new-classes-of-objects/birthdays.txt").each do |line|
  name, date = line.split(",")
  birthdays[name] = date
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birthdays[name].strip

if birthdays[name] == nil
  puts "Error! no birthday logged for #{name}}"
else
  puts "#{name}'s birthday is on #{date}"
end

end
