currentDir = File.dirname(__FILE__)

birthdays = {}

text = File.read(File.join(currentDir, "birthdays.txt"))

text.each_line do |line|
  name, date, year = line.chomp.split(",")
  birthdays[name] = Time.gm(year, *date.split)
end

puts "Enter a name"
name = gets.chomp

if birthdays[name].nil?
  return "#{name}'s birthday is not listed"
else
  next_birthday = "#{birthdays[name].day}/#{birthdays[name].month}"
  age = (Time.now - birthdays[name]) / 60 / 60 / 24 / 365.25
  puts "#{name} will be #{age.ceil} on #{next_birthday}"
end
