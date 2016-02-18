text = "Christopher Alexander, Oct 4, 1936\nChristopher Lambert, Mar 29, 1957\nChristopher Lee, May 27, 1922\nChristopher Lloyd, Oct 22, 1938\nChristopher Pine, Aug 3, 1976\nChristopher Plummer, Dec 13, 1927\nChristopher Walken, Mar 31, 1943\nThe King of Spain, Jan 5, 1938\n"
File.open "birthdates.txt","w" do |f| f.write text end

h = Hash.new
File.read("birthdates.txt").each_line do |line|
  line = line.chomp
  name = line.scan(/.+(?=, Jan|, Feb|, Mar|, Apr|, May|, Jun|, Jul|, Aug|, Sep|, Oct|, Nov|, Dec)/).join
  birthday = line.scan(/(<=|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)(.+)/).join
  h[name] = birthday
end

puts "Whose birthday would you like to know?"
check = gets.chomp
if h.has_key?(check)
  birthdate = h[check].delete(",").split
  months = {"Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5, "Jun" => 6, "Jul" => 7, "Aug" => 8, "Sep" => 9, "Oct" => 10, "Nov" => 11, "Dec" => 12}
  y = birthdate[2]
  m = months[birthdate[0]]
  d = birthdate[1]
  age = ((Time.new - Time.mktime(y, m, d))/31556952).to_i
  puts "His/her birthday is #{h[check]}, he/she is #{age} years old!"
else
  puts "Sorry, I don't know that one"
end

File.delete("birthdates.txt")
