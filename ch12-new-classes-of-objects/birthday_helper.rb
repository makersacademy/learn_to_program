filename = 'Birth_Dates.txt'
string
birth_dates = {}

birth_dates['Christopher Alexander'] = 'Oct 4, 1936'
birth_dates['Christopher Lambert'] = 'Mar 29, 1957'
birth_dates['Christopher Lee'] = 'May 27, 1922'
birth_dates['Christopher Lloyd'] = 'Oct 22, 1938'
birth_dates['Christopher Pine'] = 'Aug 3, 1976'
birth_dates['Christopher Plummer'] = 'Dec 13, 1927'
birth_dates['Christopher Walken'] = 'Mar 31, 1943'
birth_dates['The King of Spain'] = 'Jan 5, 1938'

puts 'Whose birthday would you like to know?'
name = gets.chomp
bday = birth_dates[person]

if bday == nil
  puts "Sorry I don't know this birthday"
else
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
end