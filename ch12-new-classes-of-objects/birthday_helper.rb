birth_dates = {}
File.read('birthdates.txt').each_line do |lines|#iterate through each line of the input file
    name, date, year = lines.split(',') # using split to separate the lines with a comma delimiter, and store them 3 variable
    birth_dates[name] = date # I'm not using the year just name and date
    
end

puts "Whose birthday would you like to know?"
name = gets.chomp
date = birth_dates[name]
if date == nil
    puts "I don't have that one"
else
puts "#{name} was born on  + #{date}"
end

