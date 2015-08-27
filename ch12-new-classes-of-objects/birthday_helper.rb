require 'date'

birthdates = File.read('/home/nitrous/files/birthdates.txt')

birthhash = {}

birthdates.each_line { |string| array = string.split(', ', 2); birthhash[array[0]] = array[1].chomp }

puts "Whose birthday are you after?"
name = gets.chomp

if !birthhash[name] then puts "Never heard of them." else
  birthdate = Date.parse(birthhash[name])
  birthday = Date.new(Date.today.year, birthdate.month, birthdate.day)
  birthday = birthday.next_year if birthday < Date.today
  puts "Next birthday on " + birthday.strftime('%b %-d, %Y') + "."
  puts "They will be " + (birthday.year - birthdate.year).to_s + " years old."
end
  
    