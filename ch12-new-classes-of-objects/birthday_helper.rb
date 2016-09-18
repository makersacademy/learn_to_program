# First, load in the birthdates.
birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  # Find the index of first comma,
  # so we know where the name ends.
  first_comma = 0
  while line[first_comma] != ',' &&     # While line is not ',' TRUE, and&&...first_comma is before the end of the line
      first_comma < line.length         # first_comma is before the end of the line
    first_comma = first_comma + 1       # Not sure why '1' is added here.
  end

  name = line[0..(first_comma - 1)]      # Name = string from 0 character to just before ','
  date = line[-12..-1]                   # Captures arse end of line in this specific format
  birth_dates[name] = date
end

# Now ask the user which one they want to know.
puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Oooh, I don't know that one..."
else
  puts date[0..5]
end
