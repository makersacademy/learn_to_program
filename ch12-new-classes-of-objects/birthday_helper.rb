birth_dates = {}

File.readlines('birthdates.txt').each do |line|
  name, dates, year = line.split(',')
  month, date = dates.split(" ")
  birth_dates[name] = Time.gm(year, month, date)
end


puts 'Whose birthday would you like to know?'
name = gets.chomp
bday = birth_dates[name]

if bday == nil
  puts "dont exist"
else
  puts "#{bday}"
end