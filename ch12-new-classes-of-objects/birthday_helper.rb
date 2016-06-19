list = {}
File.open("/Users/NNS/Desktop/RubyP/sss.txt", "r") do |f|
f.each_line do |line|
name, date, year = line.chomp.split(/\s*,\s*/, 3)
month, day = date.split
list[name] = Time.mktime(year, month, day)
end
end
puts
puts "Please choose a name from list below:"
puts "------------"
puts list.keys
puts "------------"
name = gets.chomp.to_s
puts
b_date = list[name]
if b_date.nil?
puts "Wrong name"
exit
else
t_now = Time.now
age = Time.now.year - b_date.year
end
if t_now.month > b_date.month or (t_now.month == b_date.month && t_now.day > b_date.day)
age += 1
end
if t_now.month == b_date.month and t_now.month == b_date.month
puts "Congrats! Today is #{name} birthday! Now he is #{age}! old"
else
date_format = b_date.strftime "%B %d"
puts "#{name}'s birthday will be on #{date_format}. He will be #{age} old!"
end

