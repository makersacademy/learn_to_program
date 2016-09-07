# your code here
birthdays = {}


text = File.read("birthdays.txt")

text.each_line do |line|
  name, date, year = line.chomp.split(",")
  birthdays[name] = date
end

puts "Enter a name"
name = gets.chomp

if birthdays[name].nil?
  return "#{name}'s birthday is not listed"
else
  puts "#{name}'s birthday is on #{birthdays[name]}"
end
