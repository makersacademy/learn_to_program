# create hash to store the names and dates together
birthday_list = {}
#read the file and 'do' for each line in the file
File.read('birthdays.txt').each_line do |line|
  #remove line endings
  line = line.chomp
  comma = 0
  #iterate through the line until we find the comma
  #this loop will end once the character it is currently
  #checking is a comma at which point we have the
  #location within the line of the comma stored
  while line[comma] != ',' && comma < line.length
    comma += 1
  end
  #store the line up to the comma (excluding)
  #this will be the name to go into the hash
  name = line[0..(comma - 1)]
  #take the last 12 characters ie 'mmm dd, yyyy'
  date = line[-12..-1]

  #store in hash
  birthday_list[name] = date
end
  #prompt user
  puts "Whose birthday do you want?"
  name = gets.chomp
  date = birth_dates[name]

  if !date
    puts "I don't have that name stored"
  else
    puts date
  end
