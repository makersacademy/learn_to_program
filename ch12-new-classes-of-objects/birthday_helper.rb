def birthday
  
birth_dates = {}

File.read('birthdates.txt').each_line do |line|
  name, date = line.split(',')
  birth_dates[name] = date
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Oooh, I don't know that one..."
else
  puts "#{name}'s birthday is on #{date.strip}."
end

end
