# first attempt
#def birthday_helper (name, birthday)

#  {
#    'Christopher Alexander' => 'Oct 4, 1936',
#    'Christopher Lambert' => 'Mar 29, 1957',
#    'Christopher Lee' => 'May 27, 1922',
#    'Christopher Lloyd' => 'Oct 22, 1938',
#    'Christopher Pine' => 'Aug 3, 1976',
#    'Christopher Plummer' => 'Dec 13, 1927',
#    'Christopher Walken' => 'Mar 31, 1943',
#    'The King of Spain' => 'Jan 5, 1938'
#  }

#  puts "give me a name"

#  answer = get.chomp

#  dob = birthday_helper[answer]

#  month_year = dob.split(",")

#end

# The solution:
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
