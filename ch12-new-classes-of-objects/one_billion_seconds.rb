

def billion_sec_bday(year,month,day, hour=0, minute = 0, second = 0)
billion_sec = Time.new(year, month, day, hour, minute, second) + 1000000000

if billion_sec < Time.new
puts "WOW! You already had your billion second birthday! Happy belated birthday!!!"
else
  puts "Your billionth second birthday is on at #{billion_sec} mark it in your calendar!"
end

end

puts "What year were you born?"
year = gets.chomp

puts "what month were you born?"
month = gets.chomp

puts "What day were you born?"
day= gets.chomp

billion_sec_bday(year,month,day)