dates = File.read 'dates.txt'
date_hash = {}
dates.each_line do |x|
  name, day, year = x.split(', ')
  date_hash[name] = Time.gm(year, *(day.split))
end
puts date_hash['Christopher Lee']

puts 'Whose birthday would you like to know?'
name = gets.chomp

bday = date_hash[name]

puts "Oooh, I don't know that one..." if bday == nil

now = Time.new
age = now.year - bday.year

  if now.month > bday.month || (now.month == bday.month && now.day > bday.day)
    age += 1
  end
  
  if now.month == bday.month && now.day == bday.day
    puts "#{name} turns #{age} TODAY!!"
  else
    date = bday.strftime "%b %d"
    puts "#{name} will be #{age} on #{date}."
  end

  