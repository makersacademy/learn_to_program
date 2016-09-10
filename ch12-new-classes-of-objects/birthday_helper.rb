birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
# Load the file and separate the list onto separate lines.
  first_comma = 0
  while line[first_comma] != ',' &&
        first_comma < line.length
    first_comma = first_comma + 1
  end
  # Separate the data using the commas as split points
  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
  # Store the names and dates from the File
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
# Get user input about who's birthday they would like to know
date = birth_dates[name]

if date == nil
  puts "Oooh, I don't know that one..."
  # If the name doesn't exist in the file output
else
  puts date[0..5]
  # Output the date from the File
end
