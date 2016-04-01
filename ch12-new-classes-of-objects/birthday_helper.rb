birth_dates = {}

File.read('birthdates.txt').each_line do |line|
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

puts "birthday u want?"
name = gets
date = birth_dates[name]

if date == nil
  "no"
else
  date[0..5]
end
