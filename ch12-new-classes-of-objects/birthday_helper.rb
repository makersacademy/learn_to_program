birthdates = File.read('birthdays.txt').split("\n")

birthdays_hash = birthdates.inject({}) do |h, a|
  splt = a.split(".")
  h[splt[0]] = splt[1]
  h
end

puts "Whose Birthday have you forgotten again?"
name = gets.chomp

bday = birthdays_hash[name]


puts "#{name}'s Birthday is #{bday[0..4]}"
