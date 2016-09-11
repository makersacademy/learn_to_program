File.open '/Users/crispinandrews/Projects/MakersAcademy/learn_to_program/ch12-new-classes-of-objects/birthdays.txt'

bdays = {}

File.read('birthdays.txt').each_line do |line|
  line = line.chomp
  person, date, year = line.split(',')
  bdays[person] = date, year
end


puts "Whose bday do you want to know?"
person = gets.chomp
bday = bdays[person]

puts bday
