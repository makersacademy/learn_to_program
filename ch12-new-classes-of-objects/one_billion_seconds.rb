def countSeconds date
  require 'time'
  timeInSecsonds = (Time.now - date).to_i
end

def secondBorn date
  require 'time'
  timeInSecsonds = date.to_i
end


require '../ch10-nothing-new/english_number.rb'
require 'time'
puts 'So blood when wer you born?'
puts 'Use this format for date YYYY-MM-DD.'
birthDate = gets.chomp
timeObj = Time.parse(birthDate)

birthdayInSecs = countSeconds(timeObj)
birthinSecsWords = english_number(birthdayInSecs)
secondThatBorn = secondBorn timeObj

DateOfBillion = Time.at(1000000000 + secondThatBorn).strftime('%F')

puts "You were born #{birthdayInSecs} seconds ago!"
puts "In words, #{birthinSecsWords} seconds ago but you don't look a day over 21!"
puts "This is #{secondThatBorn}  seconds from 1970!"
puts "You will or were a billion seconds old on #{DateOfBillion}"
