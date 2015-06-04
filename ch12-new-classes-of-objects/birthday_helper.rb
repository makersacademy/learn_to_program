# Create a hash to load the names and birthdates into
birth_dates = {}

# First, load in the birthdates
# Make it so each line of the text file 
File.read('birthdays_textfile.txt').each_line do |line|
  line = line.chomp
  
  # in the text file the names and birthdays are separated by commas
  # need to find the first comma so you know where the name ends


  # create a variable that will end up being the index position of the first comma
  # start it at zero becuase will check each one until hit a comma
  first_comma = 0
  # say keep going as long as haven't hit a comma and until the index hits
  # the last character
  while line[first_comma] != ',' && first_comma < line.length
  	first_comma = first_comma + 1
  	# add one to the index position
  end
  
  # make a variable for the name - reference it using index 0 up to position of 
  # first comma
  name = line[0..(first_comma - 1)]
  # make a variabe for the date - reference it using index - last position down to 
  # 12th from last position, because you know that is the length of the date.
  date = line[-12..-1]

  # fill in the hash - say the key is the name and the value is the date
  birth_dates[name] = date
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]
# sets up 'date' as the answer, and says it is the value corresponding to the key
# that has the name which the user gives as the input.

if date == nil
	puts "Oooh, I don't know that one..."
else
	puts date[0..5]


end
