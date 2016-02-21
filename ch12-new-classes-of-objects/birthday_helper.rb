birthdays = {} # did not understand question so followed along with CP solution

File.read("birthdates.txt").each_line do |person|
  person = person.chomp   #may need to be line.chomp

  first_comma = 0  # index start point

  until (person[first_comma] == '.') ||  (first_comma >= person.length)
    first_comma += 1
  end

  name = person[0..(first_comma-1)]  #sets name as person line up to first_comma
  date = person[-12..-1]            #sets date from [-12] to end of line
  birthdays[name] = date           #sets birthdays
end

puts "Enter the name of the person whose birthday you'd like to know"

name = gets.chomp
date = birthdays[name]

if date == nil
  puts "Sorry, I don't know that person's birthday."
else
  puts date [0..5]
end
