puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in?"
month = gets.chomp

puts "What day were you born in?"
day = gets.chomp


time_alive = Time.gm(year, month, day)
current_time = Time.now
age = current_time - time_alive

age_in_years = ((((age / 60)/60)/24)/365) 
# Note: Does not take into account leap years
rounded_age = age_in_years.floor

(0..rounded_age-1).each do |spank|
	puts "SPANK!"
end



