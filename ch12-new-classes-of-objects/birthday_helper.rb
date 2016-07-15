birthdays = {}

File.readlines('birthdays.txt').each do |line|
  name, date, year = line.split(',')
  birthdays[name] = Time.gm(year, *(date.split))
end

puts 'Who do you want the birthday of?'

name = gets.chomp
birthday = birthdays[name]

if birthday == nil
  puts 'Sorry, that person isn\'t listed!'
else
  today = Time.new
  age = today.year - birthday.year
  date = birthday.strftime "%d of %b"
  puts "#{name} will be #{age} today, bring the cake!" if today == birthday
  if today.month < birthday.month || (today.month == birthday.month && today.day < birthday.day)
    puts "#{name} will be #{age} on #{date}"
  else
    puts "You're a bit late! #{name} will be #{age+1} on #{date} next year."
  end
end