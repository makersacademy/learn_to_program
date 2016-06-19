require 'yaml'
Dir.chdir '/Users/Mali/Desktop' #will only work if file is on my Desktop

birthdays = {}

File.read('birthdays.txt').each_line do |line|
  name, date, year = line.split(',')
  birthdays[name] = date + year
end

#still needs to be extented to calcualate age and next birthday.

puts "Whose birthday would you like?"
answer = gets.chomp

if answer == nil
  puts "Sorry i dont know that name"
else
  puts "#{answer}'s birthday is on #{birthdays[answer]}"
end
