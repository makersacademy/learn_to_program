birth_dates = Hash.new
File.read(birthdays.txt).each_line do |line|
  name, date, year = line.split(",")
  birth_dates[name] = Time.gm(year, date)
end

puts "Whose birthday would you like to know?"
person = gets.chomp
birthday = birth_dates[person]

if birthday == nil
  puts "Name not found!"
else
  now = Time.new
  age = now.year - birthday.year
  if now.month > birthday.month || (now.month == birthday.month && now.day > birthday.day)
    age += 1
  end

  if now.month == birthday.month && now.day == birthday.day
    puts "#{person} turns #{age} today! :D"
  else
    date = birthday.strftime("%-d %B")
    puts "#{person} will be #{age} on #{date}. :)"
  end
end
