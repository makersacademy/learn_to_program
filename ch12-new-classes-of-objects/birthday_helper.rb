birth_dates = {}
File.read('birth_dates.txt').each_line do |line|
  line = line.chomp

  first_comma = 0
  while line[first_comma] != ',' &&
    first_comma < line.length
    first_comma = first_comma + 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]

  birth_dates[name] = date
end

puts "Who\'s birthday do you want to know?"
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Not in the database."
else
  puts date[0..5]
end
