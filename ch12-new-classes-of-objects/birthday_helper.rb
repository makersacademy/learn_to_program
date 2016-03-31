
birthdays = File.read('/home/ubuntu/workspace/messing_about/random_stuff/birthdays.txt')

hash = {}

b = birthdays.split("\n")
b.each do |entry|
    name, bday, year = entry.split(", ")
    
    hash[name] = year + " " + bday
    
end

puts "Please enter a name"
name = gets.chomp

bday = hash[name]

if bday == nil 
    puts "Sorry I don't know who that is!" 
    exit 
end

n = bday.length

bmonth_day = bday[4...n]

byear = bday[0..3]

cur_year = Time.new.to_s[0..3]

age = (cur_year.to_i - byear.to_i)

next_bday = (cur_year.to_i + 1).to_s + bmonth_day

puts "#{name}'s D.O.B is #{bday}, their next birthday will be #{next_bday} and they will be #{age+1} years old!"