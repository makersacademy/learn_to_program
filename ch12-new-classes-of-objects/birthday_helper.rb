birthdates = {}

File.read('birthdates.txt').each_line do |line|
  date = line(-12..-1)
  name = line(0..-16)
  birthdates[name] = date
end

puts "Whose birthday would you like to know?"
person = gets.chomp
dob = birthdates[person]

if birthdates[person] == nil
  puts "We don't have their birthday at the moment!"
else puts dob
end
