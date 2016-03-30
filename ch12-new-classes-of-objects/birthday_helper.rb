

birth_dates = {}

File.read("bdays.txt").each_line do | line |
    key, value = line.chomp.split(",")
    birth_dates[key] = value
  end

puts "Whose birthday would you like to know?"
name = gets.chomp
date = birth_dates[name]
time = Time.new
bd = Time.local(date[6..9], date[3..4], date[0..1])
age = ((time - bd) / 31557600).floor

puts "#{name}'s birthday is on the #{date[0..4]}. He will be #{age} years old."



