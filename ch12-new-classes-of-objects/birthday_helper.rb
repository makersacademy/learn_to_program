birth_dates = {}
File.readlines('people.txt').each do |line|
    name, date, year = line.split(',')
    birth_dates[name] = Time.gm(year, *(date.split))
end
  puts "Enter a name"
  name = gets.chomp
  bday = birth_dates[name]

  if bday == nil
    puts "I don't know that birthday"
  else
    now = Time.new
    age = now.year - bday.year

    if now.month > bday.month || (now.month == bday.month && now.day > bday.day)
      age += 1
    end

    date = bday.strftime "%b %d"
    puts "#{name} will be #{age} on #{date}."


end
