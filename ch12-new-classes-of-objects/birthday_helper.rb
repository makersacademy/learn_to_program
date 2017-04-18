input = File.read 'birthdays.txt'

months = {
'Jan' => 1,
'Feb' => 2,
'Mar' => 3,
'Apr' => 4,
'May' => 5,
'Jun' => 6,
'Jul' => 7,
'Aug' => 8,
'Sep' => 9,
'Oct' => 10,
'Nov' => 11,
'Dec' => 12}

birthdays = {}

input.each_line do |x|
  entry = x.split(',')
  birthdays[entry[0]] = entry[1]+","+entry[2]
end

puts "Enter a name to get their birthday info:"
name = gets.chomp
if birthdays.include?(name)	
  month = months[birthdays[name].split(',')[0].split[0]]
  day = birthdays[name].split(',')[0].split[1]
  year = birthdays[name].split(',')[1]
  
  current_year = Time.new.year
  next_birthday_year = Time.new.year

  next_birthday_year += 1 if Time.new > Time.local(current_year, month.to_i, day.to_i)

  how_old = (Time.new - Time.local(year.to_i, month.to_i, day.to_i))/31557600+1
  puts "#{name}'s next birthday is on #{months.key(month.to_i)} #{day}, #{next_birthday_year} and they will be #{how_old.to_i} years old"
else
  puts "Name not on list"
end


