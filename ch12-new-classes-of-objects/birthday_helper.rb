birthday_hash = {}
 
birthday_hash["Christopher Alexander"] = "October 4, 1936"
birthday_hash["Christopher Lambert"] = "March 29, 1957"
birthday_hash["Christopher Lee"] = "May 27, 1922"
birthday_hash["Christopher Lloyd"] = "October 22, 1938"
birthday_hash["Christopher Pine"] = "August 3, 1976" 
birthday_hash["Christopher Plummer"] = "December 13, 1927"
birthday_hash["Christopher Walken"] = "March 31, 1943"
birthday_hash["The King of Spain"] = "January 5, 1938" 

Puts "Who\'s birthday would you like to know?"
name = gets.chomp 
date = birthday_hash[name]

if date == nil
puts "oh sorry, that ones not in the database"
else 
puts date[0..5]
end 
