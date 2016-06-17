name_birth_dates = {}

File.read('birthdays.txt').each_line do |entry|
   name = entry.split(',').first
   date = entry.split(',', 2).last
   name_birth_dates[name] = date
end

puts 'Enter name please:'
name = gets.chomp
date = name_birth_dates[name]

if date == nil
  puts "No such name on list."
else
  puts "#{name}'s birthday is on #{date[1, 6]}"
end
