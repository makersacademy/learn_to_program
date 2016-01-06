input = "Christopher Alexander, Oct  4, 1936
Christopher Lambert, Mar 29, 1957
Christopher Lee, May 27, 1922
Christopher Lloyd, Oct 22, 1938
Christopher Pine, Aug  3, 1976
Christopher Plummer, Dec 13, 1927
Christopher Walken, Mar 31, 1943
The King of Spain, Jan  5, 1938"

arr = input.split("\n")
bday_hash = {}

arr.each do |entry|
  bday_hash[entry[0..-15]] = entry[-12..-1]
end

puts "Who's birthday would you like to know?"
name = gets.chomp

raise "Error: Name not found." unless bday_hash.include? name

puts "#{name}'s birthday was on #{bday_hash[name]}"
puts "They are #{Time.now.to_s[0..3].to_i - bday_hash[name].to_s[-4..-1].to_i} years old"