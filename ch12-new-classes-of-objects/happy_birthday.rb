puts 'When were you born?'
year = gets.chomp.to_i
puts 'What month (1-12)?'
month = gets.chomp.to_i
puts 'What day?'
day = gets.chomp.to_i

born = Time.mktime(year, month, day) 
current = Time.now
age = (current - born)/(86400 * 365).to_i
puts "Here's a SPANK for each year!"
puts (("SPANK!" + "\n") * age)