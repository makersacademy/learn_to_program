def happy_birthday
puts 'what year where you born?'
year = gets.chomp.to_i
puts 'of what month? (in numerical form please i.e. 1-12'
month = gets.chomp.to_i
puts 'and day?'
day = gets.chomp.to_i

birthday = Time.local(year,month,day)
years_old = (Time.new - birthday) / (60*60*24*365)
years_old.to_i.times {puts "SPANK!"} 

end

