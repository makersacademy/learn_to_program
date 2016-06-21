puts 'What year were you born?'
year = gets.chomp.to_i
puts 'What month? (1-12)'
month = gets.chomp.to_i
puts 'Day? Digits only please!'
day = gets.chomp.to_i

seconds_old = Time.new - Time.local(year, month, day)
minutes_old = seconds_old / 60
hours_old = minutes_old / 60
days_old = hours_old / 24
years_old = days_old / 365
years_old_int = years_old.to_i
puts 'WOW! You\'re ' + years_old_int.to_s + ' years old!' #this answer is wrong
puts 'SPANK! ' * years_old_int
