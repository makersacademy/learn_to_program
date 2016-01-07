# First, load in the birthdates.
birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  # Find the index of first comma,
  # so we know where the name ends.
  first_comma = 0
  while line[first_comma] != ',' && # line[0] is not a comma
      first_comma < line.length #and zero isless than line length
    first_comma = first_comma + 1 #
  end

  name = line[0..(first_comma - 1)] # name is all characters from zero index to first comma
  date = line[-12..-1] # date is all characters from the last index to 12th last index
  birth_dates[name] = date #for our hash, the name is the key and date is the value
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




