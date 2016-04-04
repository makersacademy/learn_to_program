require 'Time'

hash = {}
age_count = 0

names_and_b_day = File.read 'birthday.txt'

names_and_b_day.split('\n').each do |line|
	split_line = line.split(',').map(&:strip)
	hash[split_line[0]] = split_line[1] + ", " + split_line[2]
end

p "For whom would you like to know the date of birth?"

name = gets.chomp

unless hash[name] == nil
	b_day = Time.parse(hash[name])
else
	p "#{name.capitalize} is not in the database!"
	exit
end

while Time.local(b_day.year + age_count, b_day.month, b_day.day) < Time.new
  age_count += 1
end

puts "#{name.capitalize} birthday is on #{b_day.year + age_count}/#{b_day.month}/#{b_day.day}."
puts "He/She will be #{age_count}"


