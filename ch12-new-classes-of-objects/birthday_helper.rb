birthdates = {}
File.read('birthdates.txt').each_line do |x|
  name, date, year = x.chomp.split ','
  month, day = date.split
  birthdates[name] = Time.gm(year, month, day)
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
if !birthdates[name]
  puts "I don't know, sorry!"
else
  bday = birthdates[name]
  now = Time.new
  age = now.year - bday.year
  if bday.month < now.month || (bday.month == now.month && bday.day < now.day)
    age += 1
  end
  if bday.month == now.month && bday.day == now.day
    puts "#{name} is turning #{age} today!"
  else
    date = bday.strftime "%d %B"
    puts "#{name}'s birthday is on #{date} and he will be #{age}!"
  end
end
