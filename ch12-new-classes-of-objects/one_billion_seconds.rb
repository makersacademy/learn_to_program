def countSeconds date
  require 'time'

  timeInSecsonds = (Time.now - date).to_i
end


require '../ch10-nothing-new/english_number.rb'
require 'time'
puts 'So blood when wer you born?'
puts 'Use this format for date YYYY-MM-DD.'
birthDate = gets.chomp
timeObj = Time.parse(birthDate)
birthdayInSecs = countSeconds(timeObj)
birthinSecsWords = english_number(birthdayInSecs)

puts "You were born #{birthdayInSecs} seconds ago!"
puts "In words, #{birthinSecsWords} seconds ago but you don't look a day over 21!"
