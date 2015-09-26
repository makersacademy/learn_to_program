bday_hash = {}
File.read("Birthdays.txt").each_line do |line|
  name, date, year = line.split(",")
  bday_hash[name] = Time.gm(year, *(date.split))
end


puts "Whose Birthday would you like to know?"
name = gets.chomp
bday = bday_hash[name]
if !bday_hash.include?(name)
  puts "I'm sorry but I don't know who #{name} is."
else
  now = Time.new
  age = now.year - bday.year
  if now.month > bday.month || (now.month == bday.month && now.day > bday.day)
    age += 1
  end
  if now.month == bday.month && now.day == bday.day
    puts "#{name} will be #{age} today"
  else
    date = bday.strftime("%d %B")
    puts "#{name} will turn #{age} on #{date}."
  end
end
