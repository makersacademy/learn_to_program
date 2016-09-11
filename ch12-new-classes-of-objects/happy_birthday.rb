puts "Please enter the year you were born (eg. 1980):"
year = gets.chomp.to_i
puts "Please enter the month you were born (eg. 9):"
month = gets.chomp.to_i
puts "Please enter the day you were born (eg. 4):"
day = gets.chomp.to_i

birth_date = Time.gm(year, month, day)
today_date = Time.new
seconds_in_a_year = 365 * 24 * 60 * 60

years_old = ((today_date - birth_date) / seconds_in_a_year).to_i
num_spanks = "*" * years_old
puts
puts "You have celebrated #{years_old} birthdays so far!"
puts "Get your #{years_old} SPANKS!!!"
puts
puts "#{num_spanks}"
puts
