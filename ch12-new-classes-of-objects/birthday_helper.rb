birth_dates = {}
File.readlines('birthdates.txt').each do |line| 
  name, date, year = line.split(',') 
  birth_dates[name] = Time.gm(year, *(date.split))
end

puts 'whose birthday do you want to know?'
name = gets.chomp
bday = birth_dates[name]

if bday==nil
  puts "I don't know that one"
else 
  today = Time.new
  age = today.year - bday.year
  if today.month > bday.month || (now.month == bday.month && now.day > bday.day)
    age +=1
end
if now.month == bday.month && now.day == bday.day 
  puts "#{name} turns #{age} TODAY!!"
else
      date = bday.strftime "%b %d"
puts "#{name} will be #{age} on #{date}." 
end

end