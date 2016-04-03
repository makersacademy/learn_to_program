#How Chris Pine would do it
# First, load in the birthdates.
birth_dates = {}

File.readlines('birthdates.txt').each do |line|
  name, date, year = line.split(',')
  birth_dates[name] = Time.gm(year, *(date.split))
end

# Now ask the user which one they want to know.
puts 'Whose birthday would you like to know?'
name = gets.chomp
bday = birth_dates[name]

if bday == nil
  puts "Oooh, I don't know that one..."
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

#How you could do it
=begin
# First, load in the birthdates.
birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  # Find the index of first comma,
  # so we know where the name ends.
  first_comma = 0
  while line[first_comma] != ',' &&
      first_comma < line.length
    first_comma = first_comma + 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
end

# Now ask the user which one they want to know.
puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Oooh, I don't know that one..."
else
  puts date[0..5]
end
=end