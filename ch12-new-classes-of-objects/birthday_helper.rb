# Returns how old they will be
# Returns when their next birthday will be

# Make empty hash to put values in from 'people.txt'
birthdays = Hash.new

# Get names & dates from 'people.txt' file => put into hash
File.open('people.txt','r').each_line do |line|
    # split up each line (i.e. each string) into name, day, month, year
    name = line.split(",")[0]
    day = line.split(",")[1].split(" ")[1]
    month = line.split(",")[1].split(" ")[0]
    year = line.delete(" ").split(",")[2]
    # add each line into hash in Time format
    birthdays[name] = Time.gm(year, month, day)
end

# ask for a name
puts "Whose birthday would you like to know?"
# assign input to new local variable 'name'
name = gets.chomp
# Go through hash using 'name' and assign to variable 'bday_values'
bday_values = birthdays[name]

# get time now 
now = Time.now.utc
# get age of person in years (not taking into account month and day)
age = now.year - bday_values.year


if bday_values == nil
    puts "Error: #{name}'s details not included in 'people.txt' file"
else
    # if birthday month is greater than now (or if month is same) and 
    # day is greater than now, birthday hasn't happened yet
    if bday_values.month > now.month || (bday_values.month == now.month && bday_values.day > now.day)
        # so birthday will be that year
        puts "#{name} will turn #{age} on #{bday_values.day}/#{bday_values.month}/#{now.year}"
    elsif bday_values.month == now.month && bday_values.day == now.day
        puts "#{name} turns #{age} today"
    elsif bday_values.month < now.month || (bday_values.month == now.month && bday_values.day < now.day)
        puts "#{name} will be #{age + 1} on #{bday_values.day}/#{bday_values.month}/#{now.year + 1}"
    end
end