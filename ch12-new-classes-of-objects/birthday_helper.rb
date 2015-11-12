def birthday_helper(filename)

  birthdays = {}
  list = File.read filename

  list.each_line do |line|
    name, date, year = line.split(',')
    birthdays[name] = (date + ', ' +  year.chomp)     
  end 
 
  puts "What is your name?"
  name = gets.chomp
  dob = birthdays[name]
  puts "Hi #{name}, your date of birth is #{dob}.\n" 
  
end