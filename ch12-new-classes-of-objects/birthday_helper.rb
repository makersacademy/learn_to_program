birth_dates = {}
File.read('names_birthdays.txt').each_line do |line|
  line = line.chomp
  first_comma = 0
  while line[first_comma] != ',' && first_comma < line.length
    first_comma += 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
end

puts "Type in the first name and last name of the person whose birthday you'd like to find."
name = gets.chomp
birthday = birth_dates[name]
if birthday == nil
  puts "I'm afraid I can't find that person's birthday."
else
  puts "#{name}'s next birthday is #{birthday[0..5]}."
end
