birth_dates = {}

File.readlines('birthdates.txt').each do |line|
  name, date, year = line.split(',')
  birth_dates[name] = Time.gm(year, *(date.split))
end

#print birth_dates

puts "Type a name to find out the birthday: "
name = gets.chomp

if birth_dates.include? name
  puts "#{birth_dates[name].day} / #{birth_dates[name].month}, #{birth_dates[name].year} is the birthday"
else
  puts "This person does not exist"
end
