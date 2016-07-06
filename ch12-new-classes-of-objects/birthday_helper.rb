birth_dates = {}
m = 0
birth_ages = {}

File.readlines('Birthdays.txt').each do |line|
  name, date, year = line.split(',')
  birth_dates[name] = date
  birth_ages[name] = year

end

puts "Who's birthday would you like to check?"
person = gets.chomp
age_in_secs = Time.now - Time.new(birth_ages[person])
age_in_years = age_in_secs / 31536000
puts "#{person}'s birthday is on #{birth_dates[person]}"

puts "#{person} will be #{age_in_years.to_i} on their next birthday"
