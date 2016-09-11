=begin
	
Create a hash with key value pairs. The key will be the name of the person
and the value will be their birthday. 
Have a puts statement at the begining that asks "Who's birthday would you like to find?"
Save this to gets.chomp
place this value inside the hash with [] square brackets. Return this vlaue in a string interpolation. 

=end

birth_dates = {} # this creates an empty hash
File.read('birthdates.txt').each_line do |line| # this access the 'birthdates.txt' file to read only. 
  line = line.chomp # This takes each line as it comes. removes the /n and assigns it to the variable line 
  # Find the index of first comma,
  # so we know where the name ends.

first_comma = 0  #creates a counter assigning it to the inital value of 0
while line[first_comma] != ',' &&  # Creates a while loop taking each line at the index given. if it is not equal to a comma and
	first_comma < line.length # the first comma, which is currently set to 0, is less than the line length. 
	first_comma = first_comma + 1 # first comma is then incremented
end

	name = line[0..(first_comma - 1)] # the square brackets look for an index of the line. the index is within a range from 0 through to the first comm_a
	# minus 1
	date = line[-12..-1] #

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