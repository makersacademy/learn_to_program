# Define path for txt file file bdays
filepath = "/Users/acsauk/Projects/learn_to_program/learn_to_program/ch12-new-classes-of-objects/birthdays.txt"

birth_days = {}

File.read("/Users/acsauk/Projects/learn_to_program/learn_to_program/ch12-new-classes-of-objects/birthdays.txt").each_line do |line|
  line = line.chomp!
  line.split(",")
  name = line
  date = line
  birth_days[name] = date
end

puts birth_days
=begin
  txt_line = line
  split_line = txt_line.split(",", 2)
  split_line.each do |k, v|
    birth_dates[k] = v
  end
end


  # Split the string by looking at the first comma only
  # Save the text prior to comma in key of hash
  # Save the text after the comma in value of hash




puts birth_dates

# Convert the txt file into an array using key value pairs (e.g. name ==> birthday)


=begin
# Ask the user for a name and store in variable
puts "Please enter a name."
user_input = gets.chomp


# Search in text file for name user enters
if birth_dates.include(user_input) == true # If name is found then print birthday

  puts "#{user_input}'s birthday is "
else
  puts "Name not found." # If name is not found tell user name cannot be found
end

=end
