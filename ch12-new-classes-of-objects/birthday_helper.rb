birth_dates = {}

File.readlines('birthday_dates.txt').each do |line|
  name, date, year = line.split(',')
  birth_dates[name] = Time.gm(year, *(date.split))
end

puts 'Enter a famous Christopher please.'
name = gets.chomp
birthday = birth_dates[name]

if birthday == nil 
  puts "Error: Enter a famous CHRISTOPHER."
else
  now = Time.new
  age = now.year - birthday.year

  if now.month > birthday.month || (now.month == birthday.month && now.day > birthday.day)
    age += 1
  end
  
  if now.month == birthday.month && now.day == birthday.day
    puts "today is #{name}'s birthday! He turns #{age} today."
  else
    date = birthday.strftime "%b %d"
    puts "#{name}'s birthday is #{date}. He will be #{age}."
  end
end