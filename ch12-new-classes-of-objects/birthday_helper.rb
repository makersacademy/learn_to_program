input = File.read '/Users/michaelarnott/Desktop/birthdays.txt' 

birthdays = Hash.new

input.each_line do |l|
  birthdays[l.split(',')[0]] = (l.split(',')[1]).lstrip
end

puts "Give me the name of a person:"
name = gets.chomp
date = birthdays[name]
puts "The next birthday of #{name} will be: #{date}"
if date == nil
  put "Name not in database. The input is case sensitive."
end

















