Dir.chdir('/Users/robin_heathcote/Projects/learn_to_program')

birth_dates = {}

File.readlines("Peoples_Birthdays.txt").each do |line| #For each line in file do

  name, date, year = line.split(',') #Split the data into name, date and year using a the comma's as reference
  birth_dates[name] = Time.gm(year, *(date.split)) #Add each name and birthdate in GMT to birth_dates
end


puts "Whose birthday would you like to know?"
name = gets.chomp
bday = birth_dates[name]

if bday == nil
  puts "Oooh I dont know that one..."
else
  now = Time.new #Get the Time now
  age = now.year - bday.year # Minus the birthday year from this current year

  if now.month > bday.month || (now.month == bday.month && now.day > bday.day) #If this month is greater than the birthday month or this month is equal and the day is greater add one year of age
    age +=1
  end
  if now.month == bday.month && now.day == bday.day #This checks if it is the persons birthday today
    puts "#{name} turns #{age} TODAY!!"
  else
    date = bday.strftime "%b %d" #Formats the date with %b (abreviated month name) and %d day of the month, zero padded
    puts "#{name} will be #{age} on #{date}"
  end
end


