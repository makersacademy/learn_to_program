birthdays = {}

File.read("birthdays.txt").each_line do |x|
    a = x.index(',')
    b = x.size
    
    name, date, year = x.slice(0...a), x.slice((a+2)...a+7), x.slice((b-4)...b)
    
    birthdays[name] = date
end    

puts "Please put the name of the person whose birthday you would like to know?"
name = gets.chomp
birthday = birthdays[name]

if birthday == nil
    puts "Sorry dont know that one"
else
    puts "#{birthday}"
end
