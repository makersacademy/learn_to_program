#read in file and convert to hash
@chrises = {}
file = File.open("../../chris_bday.txt", "r")
file.readlines.each do |line|
name, date, year = line.chomp.split(',')
@chrises [name.to_s] = date.to_s + year.to_s
end
file.close


#get input from user
puts "Whose birthday are you looking for?"
chris = gets.chomp

if !@chrises.has_key?(chris)
    puts "I'm sorry but I don't know that person's date of birth"
else
    puts "#{chris}'s birthday will be on#{@chrises[chris][0..-6]}."
end
