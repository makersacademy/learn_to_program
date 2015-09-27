def birthday_helper filename

  require 'time'

  birthDates = {}

  fileString = File.read filename
  fileString.each_line {|line| birthDates[line.split(',')[0]] = Time.parse((line.split(',')[1].strip + line.split(',')[2]).chomp)}

  puts 'Hello guy or gal, What is you first name?'
  firstName = gets.chomp
  puts 'And now tell me your surname.'
  surname = gets.chomp

  fullName = firstName + " " + surname

  puts
  puts "So your full name is #{fullName} and you were born on the #{birthDates[fullName].strftime('%F')}"
  puts

  birthdayThisYear = Time.new(Time.new.year,birthDates[fullName].month,birthDates[fullName].day)


  if birthdayThisYear < Time.new
    birthdayThisYear = Time.new(Time.new.year+1,birthDates[fullName].month,birthDates[fullName].day)
  end

  yourAge = ((birthdayThisYear - birthDates[fullName])/(60*60*24*365.25)).to_i



  puts "Your next birthday will be on #{birthdayThisYear.strftime('%F')} and you will be #{yourAge} years of age!"
  puts


end

birthday_helper 'birthdates.txt'



