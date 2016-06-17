birth_dates = {}
birth_dates["Tim"] = "Dec 09, 1976"
birth_dates["Tom"] = "Nov 02, 1986"
birth_dates["John"] = "Oct 07, 1983"
birth_dates["James"] = "Feb 05, 1975"
birth_dates["Mark"] = "Jan 18, 1988"


File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  first_comma = 0
  while line[first_comma] != ',' &&
      first_comma < line.length
    first_comma += 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Oooh, I don't know that one..."
else
  puts date[0..11]
end
