filename = "bdaylist.txt"

list = open(filename)

birthday_list = Array.new
birthday_list = list.readlines
new_list = Hash.new

birthday_list.each do |line|
  name, date, year = line.split(',')
  new_list[name] = Time.gm(year, *(date.split))
end

puts "Whose birthday do you wish to know?"
name = gets.chomp
bday = new_list[name]

if bday == nil
  puts "#{name} is not on the list."
else
  now = Time.new
  age = now.year - bday.year

  if now.month > bday.month || (now.month == bday.month && now.day > bday.day)
    age += 1
  end

  if now.month == bday.month && now.day == bday.day
    puts "#{name} turns #{age} TODAY!!"
  else
    date = bday.strftime "%B %d"
    puts "#{name} will be #{age} on #{date}."
  end
end
list.close
