def birthday_helper
  birth_dates = Hash.new {}

   birthdays = File.read("../Users/benrumble/Desktop/gitdir/projects/learn_to_program/ch12-new-classes-of-objects/birthdays.txt")

   birthdays.split("\n").each do |line|

     before_comma = line.to_s.split(",")[0]
     birth_dates[before_comma] = line[-12..-1]

   end

   puts "Whose birthday would you like to know?"
   name = gets.chomp

   puts "#{name}'s birthday is on #{birth_dates}."
end

birthday_helper
