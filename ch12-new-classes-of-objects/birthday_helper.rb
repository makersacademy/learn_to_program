birth_dates = {}

File.read("birthdate.txt").each_line do |line|
  line = line.chomp
  first_comma = 0
  while line[first_comma] != ","
    first_comma += 1
  end
  name = line[0..first_comma-1]
  date = line[-11..-1]
  birth_dates[name] = date
end

puts "Please, provide a name."
name = gets.chomp

if birth_dates[name] == nil
  puts "Don't this person."
else
  puts birth_dates[name][-11..-7]
end
