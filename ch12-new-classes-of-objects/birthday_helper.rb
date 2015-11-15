# your code here

birth_dates = {}
File.read('birthdates.txt').each_line { |line|
  line = line.chomp
  # Find the index of first comma,
  # so we know where the name ends.
  first_comma = 0
  while line[first_comma] != ',' &&
      first_comma < line.length
    first_comma = first_comma + 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
}

# Now ask the user which one they want to know.
puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "invalid date"
else
  puts date[0..5]
end