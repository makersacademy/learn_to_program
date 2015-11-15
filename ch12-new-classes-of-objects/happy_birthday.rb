puts "What year were you born in?"
year = gets.chomp
puts 'What month were you born in?'
month = gets.chomp
puts 'What day of the month were you born on?'
date = gets.chomp



now = Time.new
birthday = Time.new(year, month, date)

seconds = now - birthday
years = seconds/31557600
spank = "Spank! " * years
puts spank
puts "That is #{years.to_i} spanks!"