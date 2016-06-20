# your code here
birthdays = {}

File.read('birthdays.txt').each_line do |line|
  line = line.chomp
  details = line.split(", ")

  #puts details
  birthdays[details[0]] = details[2]
  puts birthdays
end

puts "Whose birthday do you want to know?"
name = gets.chomp.to_s

birthdays.each do |list_name, date|
  puts "#{list_name}, #{date}" if list_name == name
end 