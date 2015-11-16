# your code here
birth_dates = {}
File.read("birthdates.txt").each_line do |line|
  line = line.chomp

  first_comma = 0
  while line[first_comma] != "," &&
    first_comma < line.length
    first_comma = first_comma + 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
end

puts "Whose birthday would you like to know?"
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Oh, I don't know that one."
else
  puts date[0..5]
end

def birthday_helper
  Dir.chdir '/home/william/Dropbox/WK-03/learn_to_program/ch12-new-classes-of-objects'

  birthdays = {}

  File.readlines('b_dates.txt').each do |line|
    name, date, year =  line.split(%r{,\s*})
    birthdays[name] = Time.utc(year, *(date.split))
  end

  puts "Name to be found: "
  name = gets.chomp
  birth_date = birthdays[name]

  puts "Next birthday is #{birth_date.month} #{birth_date.day}"

end


birthday_helper
