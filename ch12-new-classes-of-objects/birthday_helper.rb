raw = File.read 'ch12-new-classes-of-objects/birthdays.txt'

hash = {}

raw.each_line do |l|
    hash[l.split(',')[0]] = l.split(',')[1]
end

puts hash

puts 'Whose birthday are you looking for?'
bday_biyl = gets.chomp

bday_day = hash[bday_biyl]

puts "#{bday_biyl}'s birthday is on#{bday_day}."